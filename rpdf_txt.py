# origin: rmm_pdf.py
# pdf to text
# alt pdftotext utility

import os
import re
from PyPDF2 import PdfReader

def clean_line(line):
    str_clean = re.sub('[^a-zA-Z0-9\n\.]', ' ', line)
    return str_clean

def print_pdf(pdf_folder, output_folder):
    keyword_nodes = {}

    pdf_files = [f for f in os.listdir(pdf_folder) if f.endswith('.pdf')]
    for pdf_file in pdf_files:
        pdf_path = os.path.join(pdf_folder, pdf_file)
        pdf_text = extract_text_from_pdf(pdf_path)
        output_file = os.path.join(output_folder, f"{pdf_file.replace('.pdf', '.txt')}")

    with open(output_file, "w") as output:
        output.write(pdf_text)

if __name__ == "__main__":
    pdf_folder = "pdf"  # Folder containing PDF files
    output_folder = "txt"  # Folder to save individual maps
    print_pdf(pdf_folder, output_folder)
