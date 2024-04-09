require 'pry'

def calculate_average(numbers)
  total = 0
  numbers.each do |number|
    binding.pry
    total =+ number # Intentional typo: should be += 
  end
  average = total / numbers.size
end

numbers = [1, 2, 4, 8]
result = calculate_average(numbers)

puts "The average is: #{result}" 

