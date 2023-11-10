import os
import re
from PyPDF2 import PdfReader
from tqdm import tqdm

# Keywords to search for
keywords = ["machine learning", "model", "algorithm", "healthcare"]

# Folder containing PDF files
pdf_folder = "pdf"

# Categories and their corresponding criteria
categories = {
    "high": lambda x: x > 100,
    "medium": lambda x: 50 < x < 100,
    "low": lambda x: x < 50,
}

# Initialize a list to store articles and their keyword counts
article_data = []

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

        article_data.append({"Article": pdf_file, "Keyword Count": keyword_count, "Category": category})
        pbar.update(1)  # Update the progress bar

# Sort the articles by category and keyword count
# x = {1: 2, 3: 4, 4: 3, 2: 1, 0: 0}
# dict(sorted(x.items(), key=lambda item: item[1])) -> {0: 0, 2: 1, 1: 2, 4: 3, 3: 4}
# sorted_articles = sorted(article_data, key=lambda x: (categories[x["Category"]], -x["Keyword Count"], x["Article"]), reverse=True)
sorted_articles = sorted(article_data, key=lambda x: x["Keyword Count"], reverse=True)

# Print the report in a table format
print(f"{'Article':<40}{'Keyword Count':<15}{'Category':<10}")
print('-' * 65)
for article_info in sorted_articles:
    print(f"{article_info['Article']:<40} ({article_info['Keyword Count']:<3}) -> {article_info['Category']:<10}")
