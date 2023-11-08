f_txt = "/home/abi/rsearch/txt/A-novel-explainable-COVID-19-diagnosis-method-by-integ_2022_Informatics-in-M.txt"

with open(f_txt, "r") as f:
    lines = f.read()
    paragraphs = lines.strip().split("\n")
    combined_paragraphs = []

    for paragraph in paragraphs:
        combined_paragraph = ' '.join(paragraph.strip().split('\n'))
        combined_paragraphs.append(combined_paragraph)

for i, paragraph in enumerate(combined_paragraphs, start=1):
    print(f"Combined Paragraph {i}:\n{paragraph}\n")
