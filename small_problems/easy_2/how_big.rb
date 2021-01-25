SQ_FEET = 10.7639

puts "Enter the length of the room in meters:"
length = gets.chomp.to_f

puts "Enter the width of the room in meters:"
width = gets.chomp.to_f

area = (length * width).round(2)
sq_ft = (area * SQ_FEET).round(2)
puts "The area of the room is #{area} square meters (#{sq_ft} square feet)."