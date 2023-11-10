import os
import re
from PyPDF2 import PdfReader
from tqdm import tqdm
import streamlit as st

# Keywords to search for
keywords = ["machine learning", "model", "algorithm", "healthcare"]

# Initialize a list to store articles and their keyword counts
article_data = []

# Function to count keywords in a given text
def count_keywords(text):
    keyword_count = 0
    for keyword in keywords:
        keyword_count += len(re.findall(keyword, text, re.IGNORECASE))
    return keyword_count

# Create a Streamlit app
st.title("PDF Keyword Counter and Categorizer")

# Allow users to input their own list of keywords
user_keywords = st.text_input("Enter keywords (comma-separated)", "machine learning, model, algorithm, healthcare")
keywords = [keyword.strip() for keyword in user_keywords.split(",")]

# Allow users select the PDF files
pdf_files = st.sidebar.file_uploader("please upload your data file", type=["pdf"],
        accept_multiple_files=True, key="pdf_files")

if pdf_files is not None:
    # Categories and their corresponding criteria
    categories = {
        "high": lambda x: x > 79,
        "medium": lambda x: 19 < x < 80,
        "low": lambda x: x < 20,
    }

    # Get the list of PDF files within the selected folder

    # Create a progress bar
    st.spinner("Processing PDFs...")
    with tqdm(total=len(pdf_files), unit="file") as pbar:
        for pdf_file in pdf_files:
            pdf_text = ""

            # Extract text from the PDF
            with pdf_file:
                pdf_reader = PdfReader(pdf_file)
                for page_num in range(len(pdf_reader.pages)):
                    page = pdf_reader.pages[page_num]
                    pdf_text += page.extract_text()

            # Count keywords in the text
            keyword_count = count_keywords(pdf_text)

            # Determine the category
            category = None
            for cat, condition in categories.items():
                if condition(keyword_count):
                    category = cat
                    break

            article_data.append({"Article": pdf_file.name, "Keyword Count": keyword_count, "Category": category})
            pbar.update(1)  # Update the progress bar

    # Display the report in a table format
    st.subheader("Keyword Count Report")
    st.write("Sorted by Keyword Count in Descending Order")
    sorted_articles = sorted(article_data, key=lambda x: x["Keyword Count"], reverse=True)
    st.table(sorted_articles)
