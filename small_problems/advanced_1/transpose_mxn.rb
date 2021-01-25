=begin
----- Problem -----
input: matrix with at least 1 row and 1 column
output: the argument matrix transposed

rules:
      Explicit:
      - use transpose method from previous exercise

----- Examples -----
transpose([[1, 2, 3, 4]]) == [[1], [2], [3], [4]]
[
  [1, 2, 3, 4]
]
[
  [1],
  [2], 
  [3], 
  [4]
]

transpose([[1], [2], [3], [4]]) == [[1, 2, 3, 4]]
[
  [1],
  [2], 
  [3], 
  [4]
]
[
  [1, 2, 3, 4]
]

transpose([[1, 2, 3, 4, 5], [4, 3, 2, 1, 0], [3, 7, 8, 6, 2]]) ==
  [[1, 4, 3], [2, 3, 7], [3, 2, 8], [4, 1, 6], [5, 0, 2]]

[
  [1, 2, 3, 4, 5], 
  [4, 3, 2, 1, 0], 
  [3, 7, 8, 6, 2]
]
[
  [1, 4, 3], 
  [2, 3, 7], 
  [3, 2, 8], 
  [4, 1, 6], 
  [5, 0, 2]
]

transpose([[1]]) == [[1]]
[
  [1]
]
[
  [1]
]

----- Data Structure -----
arrays, nested / 2D arrays

----- Algorithm -----
initialize new matrix array
for each row in old array add a new empty row
put the values in the corresponding new matrix arrays based on index of old matrix
=end

def transpose(matrix)
  new_matrix = []
  matrix.each do |row|
    new_matrix << [] while new_matrix.size < row.size
    
    row.each_with_index { |ele, idx| new_matrix[idx].push(ele)}
  end
  new_matrix
end

# p transpose([[1, 2, 3, 4]]) #== [[1], [2], [3], [4]]
# p transpose([[1], [2], [3], [4]]) #== [[1, 2, 3, 4]]
# p transpose([[1, 2, 3, 4, 5], [4, 3, 2, 1, 0], [3, 7, 8, 6, 2]])
# #   [[1, 4, 3], [2, 3, 7], [3, 2, 8], [4, 1, 6], [5, 0, 2]]
# p transpose([[1]]) == [[1]]


def transpose_alt(matrix)
  result = []
  num_of_rows = matrix.size
  num_of_columns = matrix.first.size
  
  (0...num_of_columns).each do |column_idx|
    new_row = (0...num_of_rows).map { |row_idx| matrix[row_idx][column_idx] }
    result << new_row
  end
  result
end

p transpose_alt([[1, 2, 3, 4]])
p transpose_alt([[1], [2], [3], [4]])