=begin
----- Problem -----
input: an arbitrary matrix
output: new matrix rotated 90 degrees clockwise

----- Examples -----
1 5 8   -> 3 4 1
4 7 2   -> 9 7 5
3 9 6   -> 6 2 8

3 4 1   -> 9 3
9 7 5   -> 7 4
        -> 5 1

matrix1 = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

matrix2 = [
  [3, 7, 4, 2],
  [5, 1, 0, 8]
]

new_matrix1 = rotate90(matrix1)
new_matrix2 = rotate90(matrix2)
new_matrix3 = rotate90(rotate90(rotate90(rotate90(matrix2))))

p new_matrix1 == [[3, 4, 1], [9, 7, 5], [6, 2, 8]]
p new_matrix2 == [[5, 3], [1, 7], [0, 4], [8, 2]]
p new_matrix3 == matrix2

----- Data Structure -----
arrays, nested arrays

----- Algorithm -----
initialize a new matrix variable
iterate thru each subarray/row
- add new row to new matrix so new matrix size the same as row size

iterate thru subarray/row elements
- add the to the front of each row 
  - row corresponds with the index in row of old matrix 

=end

def rotate90(matrix)
  new_matrix =[]
  matrix.each do |row|
    new_matrix << [] while new_matrix.size < row.size
    
    row.each_with_index { |ele, idx| new_matrix[idx].unshift(ele) }
  end
  new_matrix
end


matrix1 = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

matrix2 = [
  [3, 7, 4, 2],
  [5, 1, 0, 8]
]

new_matrix1 = rotate90(matrix1)
new_matrix2 = rotate90(matrix2)
new_matrix3 = rotate90(rotate90(rotate90(rotate90(matrix2))))

# p new_matrix1 #== [[3, 4, 1], [9, 7, 5], [6, 2, 8]]
# p new_matrix2 #== [[5, 3], [1, 7], [0, 4], [8, 2]]
# p new_matrix3 == matrix2

def rotate90_alt(matrix)
  result = []
  num_of_rows = matrix.size
  num_of_columns = matrix.first.size
  
  (0...num_of_columns).each do |column_idx|
    new_row = (0...num_of_rows).map { |row_idx| matrix[row_idx][column_idx] }
    result << new_row.reverse
  end
  result
end

p rotate90_alt(matrix1)
p rotate90_alt(matrix2)