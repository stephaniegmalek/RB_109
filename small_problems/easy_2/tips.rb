puts "What is the bill?"
bill_amount = gets.to_f

puts "What is the tip percentage?"
tip_percentage = gets.to_f

tip_amount = bill_amount * tip_percentage / 100
total = bill_amount + tip_amount

puts "The tip is $#{format('%02.2f', tip_amount)}"
puts "The total is $#{format('%02.2f',total)}"
