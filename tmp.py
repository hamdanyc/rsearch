        keywords = extract_specific_keywords(pdf_text)
        if keywords:
            for keyword in keywords:
                if keyword not in summarized_text_by_keyword:
                    summarized_text_by_keyword[keyword] = set()  # Use a set to automatically remove duplicates

                # Check if the summarized text is not already associated with any other keyword
                associated_keywords = [k for k in summarized_text_by_keyword if summarized_text in summarized_text_by_keyword[k]]
                if not associated_keywords:
                    # If not associated with any other keyword, add it to the set for the current keyword
                    summarized_text_by_keyword[keyword].add(summarized_text)
                    if keyword not in keyword_nodes:
                        keyword_nodes[keyword] = set()  # Use a set to automatically remove duplicates
                    keyword_nodes[keyword].add(summarized_text)
