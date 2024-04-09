def bubble_sort(array)
  return [] if array.empty?
  return array if array.length == 1

  for i in 0..array.length - 1
    for j in 0..array.length - 2
      # If the current element is greater than the next element
      if array[j] > array[j + 1]
        # Swap positions
        array[j], array[j + 1] = array[j + 1], array[j]
      end
    end
  end

  array
end
