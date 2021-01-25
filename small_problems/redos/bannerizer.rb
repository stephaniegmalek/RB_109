=begin
----- Problem -----
input: string, short line of text
output: print text to screen within a box

rules:
- input will always fit in terminal window

----- Examples -----
print_in_box('To boldly go where no one has gone before.')
+--------------------------------------------+
|                                            |
| To boldly go where no one has gone before. | -> width is length of text + ' |' either side
|                                            |
+--------------------------------------------+

print_in_box('')
+--+
|  |
|  |
|  |
+--+

----- Data Structure -----
strings

----- Algorithm -----
Find length of text

=end

def print_in_box(text)
  width = text.size
  top_bottom = "+-" + "#{'-' * width}" + "-+"
  empty = "|" + "#{' ' * (width + 2)}" + "|"

  puts top_bottom
  puts empty
  puts "| #{text} |"
  puts empty
  puts top_bottom
end

# print_in_box('To boldly go where no one has gone before.')
# print_in_box('')

def wrap(s, width=78)
  s.gsub(/(.{1,#{width}})(\s+|\Z)/, "\\1\n")
end

puts wrap("This text is too short to be wrapped.")

p wrap("This text is not too short to be wrapped.", 20)