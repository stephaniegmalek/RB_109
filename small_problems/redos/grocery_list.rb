def buy_fruit(list)
  fruits = []
  list.each do |pair|
    fruit, quantity = pair[0], pair[1]
    quantity.times { |n| fruits << fruit }
  end
  fruits
end

# p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) 
#  ["apples", "apples", "apples", "orange", "bananas","bananas"]

def buy_fruit_alt(list)
  list.map { |fruit, quantity| [fruit] * quantity}.flatten
end

p buy_fruit_alt([["apples", 3], ["orange", 1], ["bananas", 2]])