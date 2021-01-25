=begin
----- Problem -----
input: string 
      - first name, space, last name
output: new string
      - last name, comma, space, first name

----- Examples -----
swap_name('Joe Roberts') #== 'Roberts, Joe'
swap_name('Josh McCollom') #== 'McCollom, Josh'
swap_name('Stephanie Malek') #== 'Malek, Stephanie'
swap_name('Joe Smith') #== 'Smith, Joe'
swap_name('Jane Doe') #== 'Doe, Jane'

----- Data Structures -----
string, substrings, array

----- Algorithm -----
- separate string into first and last name
- reorder names and recombine

=end
def swap_name(full_name)
  first, last = full_name.split
  "#{last}, #{first}"
end

p swap_name('Joe Roberts')
p swap_name('Josh McCollom') #== 'McCollom, Josh'
p swap_name('Stephanie Malek') #== 'Malek, Stephanie'
p swap_name('Joe Smith') #== 'Smith, Joe'
p swap_name('Jane Doe') #== 'Doe, Jane'

# Alternative solution
def swap_name_alt(name)
  name.split.reverse.join(', ')
end