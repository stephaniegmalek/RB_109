# ----- Problem -----
# input: a string 
#        - a short line of text
# output: short line of input text printed to the screen within a banner

# rules:
#   Explicit:
#   - input string will fit in terminal window
#   Implicit:
#   - if string is empty, banner will still print
#   - box/banner is made up of 5 lines of strings:
#     - ln 1: starts and ends with '+', with '-' between, no spaces
#     - ln 2: starts and ends with '|' with spaces between 
#     - ln 3: starts with '| ' and ends with ' |' with input string between
#     - ln 4: same as line 2
#     - ln 5: same as line 1


# ----- Examples -----
# print_in_box('To boldly go where no one has gone before.')
# +--------------------------------------------+
# |                                            |
# | To boldly go where no one has gone before. |
# |                                            |
# +--------------------------------------------+

# print_in_box('')
# +--+
# |  |
# |  |
# |  |
# +--+

# ----- Data Structure -----
# strings, could make each string an element in array and then iterate thru to print
# each to screen

# ----- Algorithm -----
# - ln 1: '+-' + ('-' * string.length) + '-+'
# - ln 2: '| ' + (' ' * string.length) + ' |'
# - ln 3: '| ' + string + ' |'
# - ln 4: repeat ln 2
# - ln 5: repeat ln 1

# ----- Code -----
def print_in_box(string)
  horizontal_line = '+' + ('-' * (string.length + 2)) + '+'
  empty_line = '|' + (' ' * (string.length + 2)) + '|'
  message_line = '| ' + string + ' |'
  
  puts horizontal_line
  puts empty_line
  puts message_line
  puts empty_line
  puts horizontal_line
end

#print_in_box('To boldly go where no one has gone before.')
#print_in_box('')
#print_in_box('Hello. My name is Dave.')

#Further Exploration
# ----- Problem -----
# input: a string 
#        - a line of text
# output: line of input text printed to the screen within a banner

# rules:
#   Explicit:
#   - input string may or may not fit in terminal window (80 columns inclusing 
#     sides of the box), wrap text so appear on multiple lines if have to
#   Implicit:
#   - if string is empty, banner will still print
#   - box/banner is made up of min 5 lines of strings:
#     - top and bottom: starts and ends with '+', with '-' between, no spaces
#     - sides: starts and ends with '|' with spaces between 
#     - message line/s: starts with '| ' and ends with ' |' with input string between

# ----- Examples -----
# print_in_box('To boldly go where no one has gone before.')
# +--------------------------------------------+
# |                                            |
# | To boldly go where no one has gone before. |
# |                                            |
# +--------------------------------------------+

# print_in_box(quote)
# +------------------------------------------------------------------------------+
# |                                                                              |
# | To be, or not to be, that is the question: Whether 'tis' nobler in the mind  |
# | the mind to suffer The slings and arrows of outrageous fortune, Or to take a |
# | arms against a sea of troubles And by opposing end them.                     |
# |                                                                              |
# +------------------------------------------------------------------------------+

# ----- Data Structure -----
# strings, array of substrings

# ----- Algorithm -----
# 1. Check length of text
#    - if > 76 characters
#      - wrap text to as many lines as needed
#        1. create wrapped text array
#        2. create index variable set to 0
#        3. loop through input text until we've gone thru full text length
#           - slice out input text thats 76 characters long and add to array
#           - increment index by 76
#       4. return wrapped text array

#   - if < 76 characters
#     - do nothing to text

# 2. determine borders for box
#    - if length of text > 76
#      - horizontal line is '+' + '-' * 76 + 2 + '+'
#      - empty line is '|' + ' ' * 76 + 2 + '|'
#    - if length of text < 76
#      - horizontal line is '+' + '-' * text length + 2 + '+'
#      - empty line is '|' + ' ' * text length + 2 + '|'


# 3. print out full box
#    - check text length
#    - determine borders for box
#    - print borders 
#    - print message text
#       - iterate thru wrapped text array
#       - add '| ' before each line of text and ' |' after and print

# ----- Code -----
MAX_WIDTH = 76

def wrap_text(text)
  wrapped_text = []
  i = 0
  while i < text.length
    wrapped_text << text.slice(i, MAX_WIDTH)
    i += MAX_WIDTH
  end
  wrapped_text
end

def create_box_borders(text)
  if text.length > MAX_WIDTH
    horizontal_line = "+#{'-' * (MAX_WIDTH + 2) }+"
    empty_line = "|#{' ' * (MAX_WIDTH + 2) }|"
  else
    horizontal_line = "+#{'-' * (text.length + 2) }+"
    empty_line = "|#{' ' * (text.length + 2) }|"
  end
  [horizontal_line, empty_line]
end

def print_more_in_box(text)
  horizontal_line, empty_line = create_box_borders(text)
  
  if text.length > MAX_WIDTH
    text = wrap_text(text)
  else
    text
  end
  
  puts horizontal_line
  puts empty_line
  text.each { |line| puts "| #{line.ljust(MAX_WIDTH, ' ') } |" }
  puts empty_line
  puts horizontal_line
end

quote = "To be, or not to be, that is the question: Whether 'tis nobler in the mind to suffer The slings and arrows of outrageous fortune, Or to take arms against a sea of troubles And by opposing end them."
print_more_in_box(quote)
print_more_in_box('Somewhere over the rainbow, where dreams are not dead and some other stuff so I can get a super long string to try on')