import nltk
from nltk.corpus import stopwords
from collections import Counter
import string

nltk.download('stopwords')

# Sample text data (replace with your corpus)
corpus = [
    "Machine learning applications in healthcare improve patient outcomes.",
    "Health service providers benefit from ML-driven predictive analytics.",
    "Data-driven decision-making in health service is transforming the industry.",
    # Add more text data here
]

# Preprocessing and tokenization
stop_words = set(stopwords.words('english'))
word_freq = Counter()

for document in corpus:
    tokens = nltk.word_tokenize(document.lower())
    tokens = [word for word in tokens if word.isalpha() and word not in stop_words]
    word_freq.update(tokens)

# Number of top keywords to extract
top_keywords_count = 7

# Get the top keywords based on word frequency
top_keywords = [word for word, freq in word_freq.most_common(top_keywords_count)]

print("Top Keywords:")
print(top_keywords)
