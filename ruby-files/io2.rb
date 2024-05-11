# Reading an entire file - Shakespeare's Macbeth excerpt
content = File.read('macbeth.txt')
puts content

# Writing to a file
File.write('output.txt', 'Hello, file!')

# Appending to a file
File.open('output.txt', 'a') do |file|
  file.puts 'This is more content.'
end

# Deleting a file
File.delete('output.txt')
