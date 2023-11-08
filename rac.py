import os
import re
from PyPDF2 import PdfReader
from tqdm import tqdm

# Keywords to search for
keywords = ["machine learning", "model", "algorithm", "healthcare", "supervise", "unsupervise"]

# Folder containing PDF files
pdf_folder = "pdf"

# Categories and their corresponding criteria
categories = {
    "high": lambda x: x > 499,
    "medium": lambda x: 100 < x < 499,
    "low": lambda x: x < 100,
}

# Initialize a dictionary to store articles and their keyword counts
article_categories = {}

# Function to count keywords in a given text
def count_keywords(text):
    keyword_count = 0
    for keyword in keywords:
        keyword_count += len(re.findall(keyword, text, re.IGNORECASE))
    return keyword_count

# Get the list of PDF files
pdf_files = [f for f in os.listdir(pdf_folder) if f.endswith('.pdf')]

# Create a progress bar
with tqdm(total=len(pdf_files), unit="file") as pbar:
    for pdf_file in pdf_files:
        pdf_path = os.path.join(pdf_folder, pdf_file)
        pdf_text = ""

        # Extract text from the PDF
        with open(pdf_path, 'rb') as file:
            pdf_reader = PdfReader(file)
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

        article_categories[pdf_file] = category
        pbar.update(1)  # Update the progress bar

# Print the report in a table format
print(f"{'Article':<40}{'Category':<15}")
print('-' * 50)
for article, category in article_categories.items():
    print(f"{article:<40} -> {category:<15}")
