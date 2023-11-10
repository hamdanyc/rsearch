import os
import nltk
from nltk.corpus import stopwords
from collections import Counter
from PyPDF2 import PdfReader
from tqdm import tqdm
import string

nltk.download('stopwords')

# Path to the folder containing PDF files
pdf_folder = "pdf"

# Get a list of PDF files in the folder
pdf_files = [f for f in os.listdir(pdf_folder) if f.endswith('.pdf')]

# Preprocessing and tokenization
stop_words = set(stopwords.words('english'))
word_freq = Counter()

# Create a progress bar
with tqdm(total=len(pdf_files), unit="file") as pbar:
    for pdf_file in pdf_files:
        pdf_path = os.path.join(pdf_folder, pdf_file)

        # Extract text from the PDF file
        pdf_text = ""
        with open(pdf_path, 'rb') as file:
            pdf_reader = PdfReader(file)
            for page_num in range(len(pdf_reader.pages)):
                page = pdf_reader.pages[page_num]
                pdf_text += page.extract_text() + ' '  # Include a space between pages

        tokens = nltk.word_tokenize(pdf_text.lower())
        tokens = [word for word in tokens if word.isalpha() and word not in stop_words]
        word_freq.update(tokens)
        pbar.update(1)  # Update the progress bar

# Number of top keywords to extract
top_keywords_count = 15

# Get the top keywords based on word frequency
top_keywords = [word for word, freq in word_freq.most_common(top_keywords_count)]

print("Top Keywords:")
print(top_keywords)
