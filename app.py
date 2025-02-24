from langchain.chat_models import init_chat_model
from chromadb.utils import embedding_functions
from langchain_chroma import Chroma
from langchain.prompts import ChatPromptTemplate
from langchain_core.output_parsers import StrOutputParser
from langchain_core.runnables import RunnablePassthrough
from langchain_core.embeddings import Embeddings
from dotenv import load_dotenv
import streamlit as st
import chromadb
import os

load_dotenv()
os.environ["GROQ_API_KEY"] = os.environ.get('GROQ_API_KEY')
llm = init_chat_model("llama-3.2-1b-preview", model_provider="groq")

# %% app.ipynb 4
ef = chromadb.utils.embedding_functions.DefaultEmbeddingFunction()

class DefChromaEF(Embeddings):
  def __init__(self,ef):
    self.ef = ef

  def embed_documents(self,texts):
    return self.ef(texts)

  def embed_query(self, query):
    return self.ef([query])[0]

def extract_metadata(collection):
       
    # Get the first n embeddings from the collection
    col = client.get_or_create_collection(collection)
    
    # Extract the text from the embeddings
    # page = col.query(query_texts=["Abstract"])
    page = col.get(ids=["0"])
    return page["documents"][0][:577]
    
# %% app.ipynb 7
# Get list of collections from ChromaDB
client = chromadb.PersistentClient(path="../chromadb")
collections = client.list_collections()
pdf = [collection.name for collection in collections]
qs = ["Summarize the text","What data analysis mentioned in the text",
      "Give overview of the main findings", "Suggest a future research applies based on the text",
      "What are the problem statements mentioned in the text?"]
# %% app.ipynb 8
st.title("Knowledge Base")

# %% app.ipynb 10
# Create a selectbox to choose a collection
mt = ""
selected_collection = st.sidebar.selectbox("Select a collection", pdf)
selected_qs = st.sidebar.selectbox("Select a question", qs)
st.write(selected_collection)
mt = extract_metadata(selected_collection)
st.write(mt,"...")

# %% app.ipynb 12
db = Chroma(client=client, collection_name=selected_collection, embedding_function=DefChromaEF(ef))
retriever = db.as_retriever()

# %% app.ipynb 14
template = """<bos><start_of_turn>user\nAnswer the question based only on the following context and extract out a meaningful answer. \
Please write in full sentences with correct spelling and punctuation. if it makes sense use lists. \
If the context doesn't contain the answer, just respond that you are unable to find an answer. \

CONTEXT: {context}

QUESTION: {question}

<end_of_turn>
<start_of_turn>model\n
ANSWER:"""

# %% app.ipynb 15
prompt = ChatPromptTemplate.from_template(template)

# %% app.ipynb 17
rag_chain = (
    {"context": retriever, "question": RunnablePassthrough()}
    | prompt
    | llm
)

# %% app.ipynb 19
def ask_question(question):
    response = ""
    response_placeholder = st.empty()
    for r in rag_chain.stream(question):
        response += r.content
        # response_placeholder.write(response)
    return response

# %% app.ipynb 20
if __name__ == "__main__":
    user_question = st.text_input("Ask a question (or close tab to exit): ", value = selected_qs)
    if user_question.lower() == 'quit':
        exit()
    answer = st.write(ask_question(user_question))
