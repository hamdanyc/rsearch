# rmm.py: build mm from a text file
# summarise each paragraph
# input: text file
# output: mm file

import re
from sumy.parsers.plaintext import PlaintextParser
from sumy.nlp.tokenizers import Tokenizer
from sumy.summarizers.lsa import LsaSummarizer

def summarize(text, language="english", sentences_count=3):
    parser = PlaintextParser.from_string(text, Tokenizer(language))
    summarizer = LsaSummarizer()
    summary = summarizer(parser.document, sentences_count)
    return ' '.join([str(sentence) for sentence in summary])

def clean_line(line):
    str_clean = re.sub('[^a-zA-Z0-9\n\.]', ' ', line)
    return str_clean

def extract_specific_keywords(line):
    keywords = ["machine learning", "model", "supervised"]
    line = line.lower()

    found_keywords = [keyword for keyword in keywords if keyword in line]

    return found_keywords

def create_mind_map(text_file, output_file):
    keyword_nodes = {}

    with open(text_file, "r") as file:
        lines = file.readlines()
        for line in lines:
            line = line.strip()
            line = summarize(line)
            line = clean_line(line)
            keywords = extract_specific_keywords(line)

            if keywords:
                for keyword in keywords:
                    if keyword not in keyword_nodes:
                        keyword_nodes[keyword] = set()
                    keyword_nodes[keyword].add(line)

    with open(output_file, "w") as output:
        output.write("<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n")
        output.write("<map version=\"1.0.1\">\n")

        # Create a main node for the topic
        output.write("  <node TEXT=\"topic\">\n")

        for keyword, subnodes in keyword_nodes.items():
            # Create a subnode for each keyword
            output.write(f"    <node TEXT=\"{keyword}\">\n")
            for subnode in subnodes:
                output.write(f"      <node TEXT=\"{subnode}\" />\n")
            output.write("    </node>\n")

        output.write("  </node>\n")
        output.write("</map>\n")

if __name__ == "__main__":
    text_file = "mm/ml.txt"  # Replace with your text file's path
    output_file = "mm/ml.mm"  # Output .mm file
    create_mind_map(text_file, output_file)
