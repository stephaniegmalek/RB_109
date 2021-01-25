def compute_sum(number)
  sum = 0
  1.upto(number) { |num| sum += num }
  sum
end

def compute_product(number)
  product = 1
  1.upto(number) { |num| product *= num }
  product
end

puts ">> Please enter an integer greater than 0:"
number = gets.chomp.to_i

puts ">> Enter 's' to compute the sum, 'p' to compute the product."
answer = gets.chomp

if answer == 's'
  sum = (1..number).inject(:+)
  puts "The sum of the integers between 1 and #{number} is #{sum}."
elsif answer == 'p'
  product = (1..number).inject(:*)
  puts "The product of the integers between 1 and #{number} is #{product}."
else
  puts "Unknown selection."
end