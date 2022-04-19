def transpose(arr)
  transposed = []
  arr.size.times do |row_size|
    transposed_column = []
    arr.first.size.times do |column_size|
      transposed_column << arr[column_size][row_size] 
    end
    transposed << transposed_column
  end
  transposed
end

matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

new_matrix = transpose(matrix)

p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]