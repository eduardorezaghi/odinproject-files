def return_greeting(name)
  return "Hello, #{name}!"
end

p return_greeting("John") # "Hello, John!"

def multiply(a, b)
  return a * b
end

p multiply(2, 3) # 6

def scream(words)
    words = words + "!!!!"
    puts words
    return
  end
  
scream("Yippeee")
