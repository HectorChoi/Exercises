def bubble_sort!(arr)
  n = arr.length
  loop do
    swapped = false
    (1..n-1).each do |i|
      if arr[i-1] > arr[i]
        arr[i-1], arr[i] = arr[i], arr[i-1]
        swapped = true
      end
    end

    break unless swapped
  end
  nil
end

array = [5, 3]
bubble_sort!(array)
p array == [3, 5]

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
p array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
p array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
