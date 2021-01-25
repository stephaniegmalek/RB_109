=begin
----- Problem -----
input: a 3 x 3 matrix
      - an Array of Arrays format (nested array / 2D array)
output: the transpose of the argument matrix
        - exchange the columns and rows 
rules:
      Explicit:
      - cannot use 'Array#transpose' or `Matrix` class
      - cannot modify or mutate the original matrix

----- Examples -----
matrix = [
  [1, 5, 8],    -> matrix[0][0], matrix[0][1], matrix[0][2]
  [4, 7, 2],    -> matrix[1][0], matrix[1][1], matrix[1][2]
  [3, 9, 6]     -> matrix[2][0], matrix[2][1], matrix[2][2]
]

new_matrix = transpose(matrix)

p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]

  [1, 4, 3]   -> matrix[0][0], matrix[1][0], matrix[2][0]
  [5, 7, 9]   -> matrix[0][1], matrix[1][1], matrix[2][1]
  [8, 2, 6]   -> matrix[0][2], matrix[1][2], matrrix[2][2]

p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]

----- Data Structure -----
array, nested array, integers

----- Algorithm -----
initialize new matrix array
add new array to new matrix the same number of times as matrix size

iterate thru each row of matrix
- iterate thru each element in row
  - put each element in new matrix row based on index

=end

def transpose(matrix)
  new_matrix = []
  (matrix.size).times { |n| new_matrix << []}
  
  matrix.each do |row|
    row.each_with_index do |ele, idx|
      new_matrix[idx].push(ele)
    end
  end
  new_matrix
end

matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

# p transpose(matrix)
new_matrix = transpose(matrix)

# p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
# p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]

# Alternative Solution
# initialize results array
# iterate from 0 to 2 
# - iterate from 0 to 2 
#   create new rows with the index row and column
#   add to result array

def transpose_alt(matrix)
  result = []
  (0..2).each do |column_idx|
    new_row = (0..2).map { |row_idx| matrix[row_idx][column_idx] }
    result << new_row
  end
  result
end

# p transpose_alt(matrix)

# Further Exploration
# update method so it mutates the caller

def transpose!(matrix)
  0.upto(2) do |x|
    (x + 1).upto(2) do |y|
      matrix[x][y], matrix[y][x] = matrix[y][x], matrix[x][y]
    end
  end
  matrix
end

p transpose!(matrix)

