import nltk
import pygraphviz as pgv

# Download NLTK data (if not already downloaded)
nltk.download("punkt")

def extract_specific_keywords(line):
    keywords = ["machine learning", "model", "supervised"]
    line = line.lower()

    found_keywords = [keyword for keyword in keywords if keyword in line]

    return found_keywords

def create_text_mind_map(text_file):
    mind_map = {}
    current_node = None

    with open(text_file, "r") as file:
        lines = file.readlines()
        for line in lines:
            line = line.strip()
            keywords = extract_specific_keywords(line)

            if keywords:
                for keyword in keywords:
                    if keyword not in mind_map:
                        mind_map[keyword] = []
                    mind_map[keyword].append(line)

    # Print the text-based mind map
    for keyword, subnodes in mind_map.items():
        print(f"{keyword}:")
        for subnode in subnodes:
            print(f"  - {subnode}")

if __name__ == "__main__":
    text_file = "intro.txt"  # Replace with your text file's path
    create_text_mind_map(text_file)
