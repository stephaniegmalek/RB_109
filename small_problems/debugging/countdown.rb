# def decrease(counter)
#   counter -= 1
# end

# counter = 10

# 10.times do
#   puts counter
#   counter = decrease(counter)
# end

# puts 'LAUNCH!'

# Further Exploration

def decrease(counter)
  counter -= 1
end

counter = 10

counter.times do
  puts counter
  counter = decrease(counter)
end

puts 'LAUNCH!'