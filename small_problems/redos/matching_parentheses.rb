=begin
----- Problem -----
input: string
output: boolean
        - true if all parentheses in string are properly balanced
        - false otherwise
rules:
- to be properly balanced, parentheses must occur in matching '(' and ')' pairs
- a balanced pair must start with '(' 
- parentheses can be nested 

----- Examples -----
balanced?('What (is) this?') == true
balanced?('What is) this?') == false
balanced?('What (is this?') == false
balanced?('((What) (is this))?') == true #-> nested parentheses
balanced?('((What)) (is this))?') == false
balanced?('Hey!') == true
balanced?(')Hey!(') == false
balanced?('What ((is))) up(') == false
'(()))('
'(())('
'()('
'('

----- Data Structure -----
strings, booleans, array 

----- Algorithm -----
initialize count variable and assign it 0
iterate thru each character
- if char matches ( incremeent count by 1
- if char matches ) increment count by -1
- if count ever goes below 0 - false
if count isn't 0 - false
=end

def balanced?(string)
  count = 0
  string.chars.each do |char|
    count += 1 if char =~ /\(|\[|\{/
    count -= 1 if char =~ /\)|\]|\}/
    return false if count < 0
  end
  count.zero?
end

# p balanced?('What (is) this?') #== true
# p balanced?('What is) this?') #== false
# p balanced?('What (is this?') #== false
# p balanced?('((What) (is this))?') #== true #-> nested parentheses
# p balanced?('((What)) (is this))?') #== false
# p balanced?('Hey!') #== true
# p balanced?(')Hey!(') #== false
# p balanced?('What ((is))) up(') #== false
p balanced?('What {[(is)]} up doc')
p balanced?('what }what')
p balanced?('what ()]what')