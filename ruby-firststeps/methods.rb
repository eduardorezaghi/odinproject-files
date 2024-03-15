# Ruby methods.

# Concept: methods are a way to group code into a reusable unit.
# Methods are defined using the def keyword, followed by the method name and the code to be executed.
# The DRY (Don’t Repeat Yourself) principle is a key concept in programming.
# It means that you should avoid duplicating code.


# Example 1: Defining a method
def say_hello
    puts "Hello, world!"
end

# Example 2: Calling a method
my_hash = {
    :summer => "sandals",
    :say_hello => say_hello
}

puts my_hash[:say_hello]   #=> "Hello, world!"

# Example 3: Globally accessible methods
# Methods defined at the top level are globally accessible.
# This means that you can call them from anywhere in your program.
Object.send(:remove_const, :MyClass) if defined? MyClass
def my_method
    "This is a method."
end

p my_method   #=> "This is a method."

# Example 4: Method with parameters
def say_hello(name)
    puts "Hello, #{name}!"
end

p say_hello("John")   #=> "Hello, John!"

# Example 5: Method with default parameters
def say_hello(name = "world")
    puts "Hello, #{name}!"
end

p say_hello   #=> "Hello, world!"

# Example 6: Method with return value
# Explicitly return a value using the return keyword.
def add(a, b)
    return a + b
end

p add(2, 3)   #=> 5

# Implicitly return a value using the last expression evaluated.
def even_odd(number)
    number % 2 == 0 ?
      "That is an even number." :
      "That is an odd number."
end

p even_odd(2)   #=> "That is an even number."
p even_odd(3)   #=> "That is an odd number."

# Example 7: Method with variable number of arguments
# Use the splat operator (*) to define a method that takes a variable number of arguments.
def add(*numbers)
    # Here, numbers is an array.
    # inject is a method that applies a binary operation to each element in an array.
        # For each element in the numbers array, add it to the sum.
    numbers.inject(0) { |sum, number| sum + number }
end

p add(1)   #=> 1
p add(1, 2)   #=> 3
p add(4, 5, 6, 7)  #=> 22

# Example 8: Predicate methods
# Predicate methods are methods that return a boolean value.
# By convention, predicate methods end with a question mark (?).
def can_divide_by?(number)
    return false if number.zero?
    true
end

p can_divide_by?(3)   #=> true
p can_divide_by?(0)   #=> false

# Built-in predicate methods
p 3.even?   #=> false
p 3.odd?   #=> true
p [].nil?   #=> false
p 3.nil?   #=> false