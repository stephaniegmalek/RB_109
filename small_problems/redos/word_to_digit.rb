=begin
----- Problem -----
input: string / sentence
output: same string with any seqence of the words 'zero', 'one', 'two', 'three'
        'four', 'five', 'six', 'seven', 'eight', and 'nine' converted to a 
        string of digits

----- Examples -----
word_to_digit('Please call me at five five five one two three four. Thanks.') 
# == 'Please call me at 5 5 5 1 2 3 4. Thanks.'

word_to_digit('eight six seven five three oh nine')
# == '8 6 7 5 3 oh 9'

----- Data Structure -----
strings, regex?

----- Algorithm -----
initalize a word variable - made up of the number words
iterate thru number words 
- if I find a match, replace the word with the index 
=end
WORDS = %w( zero one two three four five six seven eight nine )

def word_to_digit(string)
  WORDS.each do |word|
    string = string.gsub(/\b#{word}\b/i, WORDS.index(word).to_s)
  end
  string
end

p word_to_digit('Please call me at Five FIVE five one two three four. Thanks.') 
# == 'Please call me at 5 5 5 1 2 3 4. Thanks.'

p word_to_digit('eight six seven five three oh nine freight')
# == '8 6 7 5 3 oh 9'