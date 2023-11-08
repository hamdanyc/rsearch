# origin: rmm_pdf.py
# pdf to text
# alt pdftotext utility

import os
import re
from PyPDF2 import PdfReader

def clean_line(line):
    str_clean = re.sub('[^a-zA-Z0-9\n\.]', ' ', line)
    return str_clean

def merge_lines(text):
    lines = text.split('\n')
    paragraphs = []
    current_paragraph = ""

    for line in lines:
        if line.strip():
            if current_paragraph:
                current_paragraph += ' ' + line  # Add a space before appending the current line
            else:
                current_paragraph += line  # If it's the start of a new paragraph, no leading space
        else:
            if current_paragraph:
                paragraphs.append(current_paragraph.strip())
            current_paragraph = ""

    if current_paragraph:
        paragraphs.append(current_paragraph.strip())

    return '\n\n'.join(paragraphs)  # Combine paragraphs with newline characters

def extract_text_from_pdf(pdf_file):
    text = ""
    with open(pdf_file, 'rb') as file:
        pdf_reader = PdfReader(file)
        paragraph = ""
        for page_num in range(len(pdf_reader.pages)):
            page = pdf_reader.pages[page_num]
            page_text = page.extract_text()
            page_text = clean_line(page_text)
            text += page_text.replace('\n', ' ') + '\n\n'

    return text

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
    output_folder = "txt"  # Folder to save individual files
    print_pdf(pdf_folder, output_folder)
