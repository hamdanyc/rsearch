def extract_specific_keywords(line):
    keywords = ["machine learning", "model", "supervised"]
    line = line.lower()

    found_keywords = [keyword for keyword in keywords if keyword in line]

    return found_keywords

def create_xml_mind_map(text_file, output_file):
    mind_map = {}

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

    with open(output_file, "w") as output:
        output.write("<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n")
        output.write("<mindmap>\n")
        for keyword, subnodes in mind_map.items():
            output.write(f"  <node TEXT=\"{keyword}\">\n")
            for subnode in subnodes:
                output.write(f"    <node TEXT=\"{subnode}\">\n")
                output.write("    </node>\n")
            output.write("  </node>\n")
        output.write("</mindmap>\n")

if __name__ == "__main__":
    text_file = "intro.txt"  # Replace with your text file's path
    output_file = "mind_map.xml"  # Output XML file
    create_xml_mind_map(text_file, output_file)
