def multiply(num1, num2)
  num1 * num2
end

def square(num)
  multiply(num, num)
end

def power_of_n(power, num)
  product = 1
  power.times { product = multiply(num, product) }
  product
end

power_of_n(3, 2)
power_of_n(2, 5)

p square(5) == 25
p square(-8) == 64
p square(7)