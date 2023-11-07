from sumy.parsers.plaintext import PlaintextParser
from sumy.nlp.tokenizers import Tokenizer
from sumy.summarizers.lsa import LsaSummarizer

def summarize(text, language="english", sentences_count=3):
    parser = PlaintextParser.from_string(text, Tokenizer(language))
    summarizer = LsaSummarizer()
    summary = summarizer(parser.document, sentences_count)
    return ' '.join([str(sentence) for sentence in summary])

if __name__ == "__main__":
    text = """Machine learning is a branch of artificial intelligence (AI) and computer science which focuses on the use of data and algorithms to imitate the way that humans learn, gradually improving its accuracy. One of its own, Arthur Samuel, is credited for coining the term, “machine learning” with his research (link resides outside ibm.com) around the game of checkers. Compared to what can be done today, this feat seems trivial, but it’s considered a major milestone in the field of artificial intelligence. - Over the last couple of decades, the technological advances in storage and processing power have enabled some innovative products based on machine learning, such as Netflix’s recommendation engine and self-driving cars. Through the use of statistical methods, algorithms are trained to make classifications or predictions, and to uncover key insights in data mining projects. These insights subsequently drive decision making within applications and businesses, ideally impacting key growth metrics. - Machine learning algorithms are typically created using frameworks that accelerate solution development, such as TensorFlow and PyTorch"""
    summary = summarize(text)
    print(summary)
