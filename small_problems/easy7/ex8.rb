# multiply lists

def multiply_list(arr1, arr2)
  product_arr = []
  arr1.each_with_index do |num, index|
    product_arr << num * arr2[index]
  end
  product_arr
end

p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]
