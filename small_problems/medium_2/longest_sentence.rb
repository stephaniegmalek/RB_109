=begin
----- Problem -----
input: text file
output: string and integer
      - the longest sentence in the file based on number of words
      - the number of words in the longest sentence

rules:
      Explicit:
      - sentences may end with periods, exclaimation points or question marks
      - any sequence of characters that are not spaces or sentence-ending characters
        should be treated as a word
        - --- counts as a word

----- Examples -----

----- Data Structure ------
strings, array of sentences/substrings

----- Algorithm -----
- load text file
- split text into sentences
- split sentences into words
- count number of words 

=end

text = File.read("example_text_2.txt")
sentences = text.split(/\.|\?|!/)

longest_sentence = ''
longest_sentence_word_count = 0
sentences.each do |sentence|
  word_count = sentence.split.count
  if word_count > longest_sentence_word_count
    longest_sentence_word_count = word_count
    longest_sentence = sentence
  end
end

puts "The longest sentence is #{longest_sentence_word_count} words:"
puts longest_sentence