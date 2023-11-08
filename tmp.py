def combine_lines_to_paragraphs(text):
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

    return '\n'.join(paragraphs)

# Example usage:
pdf_text = "This is the first line.\nThis is the second line, part of the first paragraph.\nThis is the third line, still part of the first paragraph.\nThis is the fourth line, marking the start of a new paragraph."
combined_text = combine_lines_to_paragraphs(pdf_text)
print(combined_text)
