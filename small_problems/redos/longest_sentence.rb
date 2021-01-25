=begin
----- Problem -----
input: a text file
output: print the longest sentence in the file based on number of words

rules:
- sentences may end with periods, exclaimation points, or question marks
- any sequence of characters that are not spaces or sentence ending characters
  should be treated as a word
- print out the number of words in the longest sentence too

----- Example -----
The longest sentence is 86 words: 

----- Data Structure -----
array, strings

----- Algorithm -----
initialize text variable and assign text from text file
convert text to array of strings
- split by sentence ending characters (. ! ?)
initialize longest_sentence variable and assign empty string
initaliize word_count variable and assign 0
iterate thru array of sentences
- find size of sentences
  - if bigger than word count variable
    - reassign word_count to current sentence size
    - reassign longest_sentence to current sentence
output longest_sentence and word_count
=end

text = File.read('example_text_1.txt')
sentences = text.split(/\.|\?|!/)

longest_sentence = ''
word_count = 0
sentences.each do |sentence|
  if sentence.split.size > word_count
    word_count = sentence.split.size
    longest_sentence = sentence
  end
end

puts "The longest sentence is #{word_count} words long:"
puts longest_sentence