import re

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
    text_file = "intro.txt"  # Replace with your text file's path
    output_file = "ml.mm"  # Output .mm file
    create_mind_map(text_file, output_file)
