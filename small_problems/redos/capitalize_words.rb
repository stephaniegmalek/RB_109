=begin
----- Problem ----- 
input: string
output: new string 
        - contains original value but with first char of every word capitalized
          and all other letters lowercase
rules:
- assume that words are any sequence of non-blank characters

----- Examples -----
word_cap('four score and seven') == 'Four Score And Seven'
word_cap('the javaScript language') == 'The Javascript Language'
word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'

----- Data Structure -----
string, array

----- Algorithm -----
split string into words
iterate thru each word
- capitalize first letter and make remaining chars lowercase

=end

def word_cap(string)
  string.split.map { |word| word.capitalize}.join(' ')
end

p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'