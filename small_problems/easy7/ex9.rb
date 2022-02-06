# Multiply All Pairs

# algorithm:
# use the array product method to get into pairs
# reduce subarrays as products
# add products to new array
# sort new array of products

def multiply_all_pairs(arr1, arr2)
  products = []
  pairs = arr1.product(arr2)
  pairs.each do |pair|
    products << pair.reduce(:*)
  end
  products.sort
end

p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]
