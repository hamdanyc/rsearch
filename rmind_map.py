# rmind_map

import re

# Function to create a node and its subnodes
def create_node(keyword, text):
    node = {
        "name": keyword,
        "subnodes": [
            {
                "name": text,
                "color": "lightblue"
            }
        ]
    }
    return node

# Load the text file
with open("mm/intro.txt", "r") as f:
    text = f.read()

# Extract keywords and their corresponding text
keywords = ["machine learning", "model", "Supervised"]
nodes = []
for keyword in keywords:
    pattern = r"\b" + keyword + r"\b"
    matches = re.findall(pattern, text)
    for match in matches:
        nodes.append(create_node(keyword, match))

# Create the mind map
mindmap = {
    "nodes": nodes
}

# Print the mind map
print(mindmap)
