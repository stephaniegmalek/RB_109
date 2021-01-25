a = ["1st", "2nd", "3rd", "4th", "5th"]
list_of_numbers = []
number = nil
i = 0

loop do
  puts "=> Enter the #{a[i]} number:"
  number = gets.chomp.to_i
  i += 1
  list_of_numbers << number
  break if list_of_numbers.size == 5
end

puts "=> Enter the last number:"
number = gets.chomp.to_i

if list_of_numbers.include?(number)
  puts "The number #{number} appears in #{list_of_numbers}."
else
  puts "The number #{number} does not appear in #{list_of_numbers}."
end