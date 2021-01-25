=begin
----- Problem -----
input: an array of words
output: an array of numbers
        - numbers represent the number of letters in each word that occupy their 
          position in the alphabet
rules:
- input will consist of alphabet characters, both uppercase and lowercase. no spaces

----- Examples -----
p solve(["abode","ABc","xyzD"]) = [4, 3, 1]
p solve(["abode","ABc","xyzD"]) == [4,3,1]
p solve(["abide","ABc","xyz"]) == [4,3,0]
p solve(["IAMDEFANDJKL","thedefgh","xyzDEFghijabc"])== [6,5,7]
p solve(["encode","abc","xyzD","ABmD"]) == [1, 3, 1, 3]

----- Data Structure -----
strings, arrays, integers

----- Algorithm -----
comparing the index of each letter in each word to the index of each letter in alpha order

initalize a constant variable and assign it an array of characters a - z
initialize count variable and assign to 0
iterate thru each word and transform to count
- iterate thru each letter and its position in word
  - check if current letters position matches the position of letter in the alphabet
    - if yes, incremement count by 1
  - return count
=end
ALPHABET = ('a'..'z').to_a

def solve(array)
  
  array.map do |word|
    count = 0
    word.chars.each_with_index do |letter, idx|
      count += 1 if ALPHABET.index(letter.downcase) == idx
    end
    count
  end
end

p solve(["abode","ABc","xyzD"]) #== [4, 3, 1]
p solve(["abode","ABc","xyzD"]) #== [4,3,1]
p solve(["abide","ABc","xyz"]) #== [4,3,0]
p solve(["IAMDEFANDJKL","thedefgh","xyzDEFghijabc"]) #== [6,5,7]
p solve(["encode","abc","xyzD","ABmD"]) #== [1, 3, 1, 3]