def transpose(matrix)
  rows = matrix.size
  columns = matrix.first.size
  result = []
  (0...columns).each do |col_idx|
    transposed_row = []
    (0...rows).each do |row_idx|
      transposed_row << matrix[row_idx][col_idx]
    end
    result << transposed_row
  end
  result
end

p transpose([[1, 2, 3, 4]]) == [[1], [2], [3], [4]]
p transpose([[1], [2], [3], [4]]) == [[1, 2, 3, 4]]
p transpose([[1, 2, 3, 4, 5], [4, 3, 2, 1, 0], [3, 7, 8, 6, 2]]) ==
    [[1, 4, 3], [2, 3, 7], [3, 2, 8], [4, 1, 6], [5, 0, 2]]
p transpose([[1]]) == [[1]]
