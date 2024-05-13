def factorial(n)
    if (n == 2) then return 2 end
    return n * factorial(n-1)
end

def palindrome?(word)
  return true if word.length <= 1

  if word[0] == word[-1]
    palindrome?(word[1..-2])
  else
    false
  end
end

def bottles(num)
    if num == 0
        puts "no more bottles of beer on the wall"
    else
        puts "#{num} bottles of beer on the wall"
        return bottles(num-1)
    end
end

def fibonacci(num)
    if num <= 1
        return num
    end

    return fibonacci(num-1) + fibonacci(num-2)
end


def merge_sort(array)
  if array.length <= 1
    return array
  end

  mid = array.length / 2
  left_half = array[0...mid]
  right_half = array[mid..]

  # First, we sort the left and right halves
  left_sorted = merge_sort(left_half)
  right_sorted = merge_sort(right_half)

  # Then, we merge the sorted halves
  merge(left_sorted, right_sorted)
end

def merge(left, right)
  merged = []

  while !left.empty? && !right.empty?
    if left[0] <= right[0]
      merged << left.shift
    else
      merged << right.shift
    end
  end

  merged.concat(left).concat(right)
end



# p factorial(5)
p palindrome?('tenet')
p palindrome?('')
p palindrome?('macarron')

bottles(5)

arr_to_merge = [3, 2, 1, 4, 5, 6, 7, 8, 9]
p merge_sort(arr_to_merge)

p fibonacci(6)
