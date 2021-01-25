=begin
input: array of strings
output: new array of strings with vowels removed

rules:
- vowels are a, e, i, o, u 
- not case sensitive

----- Examples -----
remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']

----- Data Structure -----
array, strings

----- Algorithm -----
iterate thru each string
- delete a, e, i, o, u

=end

def remove_vowels(strings)
  strings.map do |string|
    string.gsub(/[aeiou]/i, '')
  end
end

p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) #== %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) #== %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) #== ['BC', '', 'XYZ']
