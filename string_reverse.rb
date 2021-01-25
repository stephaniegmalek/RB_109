# ----- Problem -----
# input: string
# output: string reversed

# rules:
#       Explicit:
#       - cannot use `String#reverse` or `String#reverse!` built in methods

# ----- Examples -----
# string_reverse('hello') == 'olleh'
# string_reverse('world') == 'dlrow'
# string_reverse('elephant') == 'tanhpele'
# string_reverse('example') == 'elpmaxe'

# ----- Data Structure -----
# strings 

# ----- Algorithm -----
# create a reversed string variable and set to empty string
# create a back index variable and set to -1
# while the reversed string size is less than the input string size 
# - add the character at back index to reversed string 
# - increment the back index by -1
# return reversed string

# ----- Code -----
def string_reverse(string)
  reversed = ''
  back_index = -1
  while reversed.size < string.size
    reversed << string[back_index]
    back_index -= 1
  end
  reversed
end

p string_reverse('hello')
p string_reverse('world')
p string_reverse('Elephant')
p string_reverse('EXAMPLE')