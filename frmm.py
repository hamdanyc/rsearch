import fitz
import os
from nltk.tokenize import sent_tokenize
from gensim.summarization import keywords

# Input and output folder paths
input_folder = 'literature/'
output_folder = 'mm/'

# Create the output folder if it doesn't exist
if not os.path.exists(output_folder):
    os.makedirs(output_folder)

def extract_summary(input_file, keywords):
    doc = fitz.open(input_file)
    text = ""
    for page_num in range(doc.page_count):
        page = doc.load_page(page_num)
        text += page.get_text("text")

    # Extract a summary of not more than 7 sentences
    summary = summarize(text, ratio=0.3)

    # Get keywords from the summary
    summary_keywords = keywords(summary, words=10, lemmatize=True).split('\n')
    
    # Add specified keywords to the list
    for keyword in keywords:
        if keyword not in summary_keywords:
            summary_keywords.append(keyword)

    return ' '.join(summary_keywords)

def create_mm_file(summary, output_file, specified_keywords):
    with open(output_file, 'w') as file:
        file.write('<?xml version="1.0" encoding="UTF-8"?>\n')
        file.write('<map version="1.0.1">\n')
        file.write(f'\t<node TEXT="{summary}">\n')
        for keyword in specified_keywords:
            file.write(f'\t\t<node TEXT="{keyword}" />\n')
        file.write('\t</node>\n')
        file.write('</map>')

# Iterate through the PDF files in the input folder
for file_name in os.listdir(input_folder):
    if file_name.endswith('.pdf'):
        input_file = os.path.join(input_folder, file_name)
        summary = extract_summary(input_file, keywords)
        output_file = os.path.join(output_folder, f'{os.path.splitext(file_name)[0]}.mm')
        create_mm_file(summary, output_file, specified_keywords)