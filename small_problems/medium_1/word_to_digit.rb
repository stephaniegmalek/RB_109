=begin
----- Problem -----
input: sentence string
output: same string with any sequence of the word representation for numbers converted
        into digits

rules:
      Implicit:
      - sentence is made up of words which are delimited by spaces
      - when word is a number need to keep punctuation ex: four. -> 4.

----- Examples -----
word_to_digit('Please call me at five five five one two three four. Thanks.') 
# == 'Please call me at 5 5 5 1 2 3 4. Thanks.

word_to_digit('She told me eight six seven five three oh nine!')
# == 'She told me 8 6 7 5 3 oh 9!'

----- Data Structure -----
string, array 

----- Algorithm -----
replace the words: 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 
'seven', 'eight', 'nine' with '1', '2', '3', '4', '5', '6', '7', '8', '9', '10'

iterate thru array of numbers as words
- if/when find match in sentence replace with index of array
=end

# def word_to_digit(sentence)
#   sentence.gsub(/zero|one|two|three|four|five|six|seven|eight|nine/, 
#                 'zero' => '0', 'one' => '1', 'two' => '2', 'three' => '3',
#                 'four' => '4', 'five' => '5', 'six' => '6', 'seven' => '7',
#                 'eight' => '8', 'nine' => '9')
# end

# def word_to_digit(sentence)
#   numbers_as_words = %w(zero one two three four five six seven eight nine)
  
#   numbers_as_words.each do |num|
#     sentence.gsub!(/\b#{num}\b/, numbers_as_words.index(num).to_s)
#   end
#   sentence
# end

DIGIT_HASH = {
  'zero' => '0', 'one' => '1', 'two' => '2', 'three' => '3', 'four' => '4',
  'five' => '5', 'six' => '6', 'seven' => '7', 'eight' => '8', 'nine' => '9'
}

DIGIT_ARRAY = %w(zero one two three four five six seven eight nine)

def word_to_digit(sentence)
  DIGIT_HASH.keys.each do |word|
    sentence.gsub!(/\b#{word}\b/, DIGIT_HASH[word])
  end
  sentence
end

# p word_to_digit('She told me eight six seven five three oh nine!')
# == 'She told me 8 6 7 5 3 oh 9!'

#Further Exploration
# handle uppercase and capitalized words

def word_to_digit_further(sentence)
  
  DIGIT_ARRAY.each do |word|
    sentence.gsub!(/\b?#{word} ?\b/i, DIGIT_ARRAY.index(word).to_s)
  end
  sentence.gsub!(/(\d{3})(\d{3})(\d{4})/, '(\1) \2-\3')
  sentence.gsub!(/(\d)([a-zA-Z])/, '\1 \2')
  sentence
end

p word_to_digit_further('Please call me at Five FIVE five one Two THREE four. Thanks.') 
# == 'Please call me at 5 5 5 1 2 3 4. Thanks.

# handle so no space between consecutive numbers
# == 'Please call me at 5551234. Thanks.'

# handle so if there are 2 or more space separated numbers, leave spaces alone while
# removing spaces between numbers you create

p word_to_digit_further("I counted 1 2 3. She went five SIX Seven eiGHt!")
# == "I counted 1 2 3. She went 5678!"

# handle phone numbers. if 10 digit phone number format to (123) 456-7890
p word_to_digit_further("Call me at One TWO three Four five sIx SEVEN eight nine zero")
p word_to_digit_further("Please call me at four one six five five five one two three four between eight AM and six PM. Thanks.")
