=begin
----- Problem -----
input: an array and a hash
output: a greeting using the person's name, title and occupation

rules:
    Explicit:
    - the input array will contain 2 or more elements, when joined with spaces produces a person's name
    - the input hash will contain 2 keys, :title and :occupation
    
----- Example -----
greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
# => Hello, John Q Doe! Nice to have a Master Plumber around.

----- Data Structure -----
string, array, hash

----- Algorithm -----
- combine array elements to make name
- return string with name and title and occupation

=end

def greetings(array, hash)
  name = array.join(' ')
  "Hello, #{name}! Nice to have a #{hash[:title]} #{hash[:occupation]} around."
end

p greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
# => Hello, John Q Doe! Nice to have a Master Plumber around.