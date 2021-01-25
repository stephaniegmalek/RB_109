1.upto(99) do |num|
  puts num if num.odd?
end

value = 1
while value <= 99
  puts value
  value += 2
end

puts (1..99).select { |num| num.odd? }