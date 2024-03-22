# Define a method extract_urls that takes a string text as input
def extract_urls(text)
  # Define a regular expression pattern to match URLs in the text
  pattern = /(?:https?|ftp):\/\/(?:www\.)?[\w\-]+(?:\.[\w\-]+)+(?:[\w\-\.,@?^=%&:\/~\+#]*[\w\-\@?^=%&\/~\+#])?/
  text.scan(pattern)
end


# Define a string sample_text containing a sample text with URLs
sample_text = "Visit our site at http://www.example.org for more information. Check out our search page at https://example.com/search?q=ruby+regex. Don’t forget to ftp our resources at ftp://example.com/resources."

# Call the extract_urls method with sample_text as input, returning an array of extracted URLs,
# then iterate over each URL in the array and print it on a new line
extract_urls(sample_text).each { |url| puts url }
