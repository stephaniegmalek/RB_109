=begin
----- Problem -----
input: string
       - first name, a space, last name
output: string
        - last name, a comma, a space, and the first name

----- Example -----
swap_name('Joe Roberts') == 'Roberts, Joe'
swap_name('Stephanie Malek') == 'Malek, Stephanie'
swap_name('Josh McCollom') == 'McCollom, Josh'

----- Data Structure -----
strings, array

----- Algorithm -----
split string into first and last name
rejoin name with last name, comma, space, first name
=end

def swap_name(full_name)
  first, last = full_name.split
  last + ', ' + first
end

# p swap_name('Joe Roberts') #== 'Roberts, Joe'
# p swap_name('Stephanie Malek') #== 'Malek, Stephanie'
# p swap_name('Josh McCollom') #== 'McCollom, Josh

def swap_name_alt(name)
  name.split.reverse.join(', ')
end

p swap_name_alt('Joe Roberts')