# > dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

# > substrings("below", dictionary)
# => { "below" => 1, "low" => 1 }


dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(received_string, dictionary)
  received_string = received_string.downcase
  result = Hash.new(0)
  dictionary.each do |word|
    if received_string.include?(word)
      result[word] = received_string.scan(word).length
    end
  end
  result
end