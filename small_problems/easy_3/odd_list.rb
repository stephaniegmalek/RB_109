def oddities(array)
  result = []
  array.each_with_index do |element, index|
    result << element if index.even?
  end
  result
end

def oddities2(array)
  result = []
  index = 0
  while index < array.length
    result << array[index]
    index += 2
  end
  result
end
p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
p oddities(['abc', 'def']) == ['abc']
p oddities([123]) == [123]
p oddities([]) == []