text = """
1. Introduction
In the first four months following the outbreak, the pandemic disease
caused by the SARS-CoV-2 virus called COVID-19 has infected between
3 and 5 million people and caused at least 200,000 deaths in more than
200 countries of the world. As a result of the outbreak of COVID-19,
governments throughout the world have taken drastic measures like
quarantining hundreds of millions of residents [1,2].
Coronavirus is still a worldwide health concern; by 1st
March 2022,
there had been 438 million positive cases and 5.9 million deaths [3].
Among the essential factors contributing to the increase in deaths caused
by COVID-19 infection, one shall mention social disparities in accessing
to early diagnosis tests, and shortage of hospital equipment for clinical
critically cases.

Currently, more than two years after the COVID-19 pandemic onset,
a number of vaccines have been developed, and the vaccination pro­
cedure is proceeding at a promising but heterogenous pace between
countries. While developed countries are more likely to have access to
vaccines, other countries face multiple obstacles to vaccination, such as
not having enough vaccine doses to protect vulnerable groups. Addi­
tionally, there are no confirmed medications to cure patients infected
people. As a result, it remains important to screen patients suspected of
being infected with COVID-19.
"""

# Split the text into two paragraphs based on the empty line
paragraphs = text.strip().split("\n\n")

# Combine lines within each paragraph into a single paragraph
combined_paragraphs = []
for paragraph in paragraphs:
    combined_paragraph = ' '.join(paragraph.strip().split('\n'))
    combined_paragraphs.append(combined_paragraph)

# Print the combined paragraphs separately
for i, paragraph in enumerate(combined_paragraphs, start=1):
    print(f"Combined Paragraph {i}:\n{paragraph}\n")
