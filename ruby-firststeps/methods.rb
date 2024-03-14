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
Object.print "Hello, world!"   #=> "Hello, world!"
