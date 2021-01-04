=begin
Problem:
        Write a method 
        that takes a 3 x 3 matrix in Array of Arrays format 
        and returns the transpose of the original matrix. 


        Take care not to modify the original matrix: 
        you must produce a new matrix and leave the original matrix unchanged.

        - return a new array where the columns are turned into rows 
        - do not mutate the object passed in to the method 
Example:
    matrix = [
      [1, 5, 8],
      [4, 7, 2],            
      [3, 9, 6]
    ]

      1  4  3
      5  7  9
      8  2  6
Data Structure:
        Input : nested array
        Output: nexted array
Algorithm:
          - create `transpose` method with `matrix_arr` parameter (which is a nested array)
          - duplicate `matrix_arr` and save it to `matrix_arr_dup`
          - assign `transpose_arr` to a nested array using `matrix_arr`
=end

# def transpose(matrix_arr)
#   duplicate = matrix_arr.dup
#   transpose_arr = [duplicate[0][0], duplicate[1][0], duplicate[2][0]], 
#                   [duplicate[0][1], duplicate[1][1], duplicate[2][1]],
#                   [duplicate[0][2], duplicate[1][2], duplicate[2][2]]
# end

def transpose(matrix_arr)
  result = []
  (0..2).each do |column_index|
    new_row = (0..2).map { |row_index| matrix_arr[row_index][column_index]}
    result << new_row
  end
  result
end

matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

new_matrix = transpose(matrix)

p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]