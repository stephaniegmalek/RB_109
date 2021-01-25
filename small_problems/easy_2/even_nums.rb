2.upto(98) { |num| puts num if num.even? }

value = 2
while value <= 98
  puts value
  value += 2
end

puts (2..98).select { |num| num.even? }