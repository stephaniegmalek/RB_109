# ----- Problem -----
# input: string consisting of words and non-alpha characters
# output: string with all non-alpha characters replaced by spaces

# rules:
#   Explicit:
#   - input string chars are all lowercase
#   - in output string there should be no consecutive spaces

# ----- Examples -----
# cleanup("---what's my +*& line?") == ' what s my line '

# ----- Data Structure -----
# strings

# ----- Algorithm -----
# 1. replace all non-alpha characters with spaces
# 2. Create empty array called cleaned
# 3. Iterate thru string and compare characters
#    - if last character in cleaned array is space don't add
#    - otherwise add to array

# ----- Code -----
ALPHABET = ('a'..'z').to_a

def cleanup_long(string)
  cleaned = []
  
  string.chars.each do |char|
    if ALPHABET.include?(char)
      cleaned << char
    else
      cleaned << ' ' unless cleaned.last == ' '
    end
  end
  cleaned.join
end

def cleanup(string)
  string = string.gsub(/[^a-z]/, " ").squeeze(' ')
end

p cleanup_long("---what's my +*& line?")

