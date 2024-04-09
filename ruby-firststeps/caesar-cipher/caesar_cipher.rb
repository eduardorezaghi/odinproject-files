def shift_char(char, shift)
  shift = shift % 26
  shifted_char = char.ord + shift

  # Check Unicode values for lowercase and uppercase letters
  if (char.match?(/[a-z]/) && shifted_char > 122) || 
     (char.match?(/[A-Z]/) && shifted_char > 90)
    # If the shifted character is out of bounds, wrap it around
    shifted_char -= 26
  end
  shifted_char.chr
end

def caesar_cipher(string, shift)
  string.chars.map do |char|
    if char.match?(/[a-zA-Z]/)
      shift_char(char, shift)
    else
      char
    end
  end.join
end
