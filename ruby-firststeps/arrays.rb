num_array = [1, 2, 3, 4, 5]
str_array = ["one", "two", "three", "four", "five"]

print("Numeric array: #{num_array}\n")
print("String array: #{str_array}\n")

# Array#each
num_array.each { |num| print("#{num} ") }
puts ""
str_array.each { |str| print("#{str} ") }
puts ""

# Array methods
Array.new # => []
Array.new(3) # => [nil, nil, nil]
Array.new(3) { |i| i + 1 } # => [1, 2, 3]
Array.new(3, "hello") # => ["hello", "hello", "hello"]
Array.new(3, true) #=> [true, true, true]

# Array#length
print("Length of numeric array: #{num_array.length}\n")
print("Length of string array: #{str_array.length}\n")

# Array#first and Array#last
print("First element of numeric array: #{num_array.first}\n")
print("Last element of string array: #{str_array.last}\n")