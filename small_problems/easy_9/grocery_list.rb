=begin
----- Problem -----
input: nested array
      - fruits with quantities ex: [ ['apple', 3] ]
output: array
      - fruits listed number of times quantities in argument is

rules:
      Implicit:
      - output array fruits are listed in order they appear in the input argument

----- Examples -----
buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) 
# ==  ["apples", "apples", "apples", "orange", "bananas","bananas"]

buy_fruit([["kiwi", 2], ["watermelon", 1], ["pears", 2]])
# == ["kiwi", "kiwi", "watermelon", "pears", "pears"]

----- Data Structure -----
nested array, array, strings, integers

----- Algorithm -----
- initialize a variable to contain results
- iterate thru sub arrays
- add fruit to result as many times the fruit quantity is

=end

def buy_fruit(grocery_list)
  grocery_list.each_with_object([]) do |item, array|
    fruit, quantity = item[0], item[1]
    quantity.times { array << fruit }
  end
end

buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) 
# ==  ["apples", "apples", "apples", "orange", "bananas","bananas"]

buy_fruit([["kiwi", 2], ["watermelon", 1], ["pears", 2]])
# == ["kiwi", "kiwi", "watermelon", "pears", "pears"]

# Alternative Solution
def buy_fruit_2(grocery_list)
  grocery_list.map { |fruit, quantity| [fruit] * quantity }.flatten
end

p buy_fruit_2([["apples", 3], ["orange", 1], ["bananas", 2]]) 
# ==  ["apples", "apples", "apples", "orange", "bananas","bananas"]

 buy_fruit_2([["kiwi", 2], ["watermelon", 1], ["pears", 2]])
# == ["kiwi", "kiwi", "watermelon", "pears", "pears"]