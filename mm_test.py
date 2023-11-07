def extract_specific_keywords(text):
    keywords = ["machine learning", "model", "supervised"]
    text = text.lower()

    found_keywords = [keyword for keyword in keywords if keyword in text]

    return found_keywords

# Example string of text
text = "Machine learning is a subset of artificial intelligence. A model is a mathematical representation."

# Extract keywords from the text
keywords = extract_specific_keywords(text)

# Print the extracted keywords
print(keywords)
