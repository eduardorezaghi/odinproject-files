# Ruby hashes.
# Hashes are a collection of key-value pairs. They are similar to arrays, but

my_first_hash = {}
my_first_hash['name'] = 'John'
my_first_hash['age'] = 25

puts my_first_hash['name']
puts my_first_hash['age']

# Another way to create a hash is to use the following syntax:
my_second_hash = {
  'name' => 'John',
  'age' => 25
}

shoes = {
  "summer" => "sandals",
  "winter" => "boots"
}

p shoes["summer"]   #=> "sandals"

# If you try to access a key that doesn’t exist in the hash, it will return nil:
p shoes["hiking"]   #=> nil

# Sometimes, this is not the desired behavior.
# If you want to return a default value instead of nil, you can use the fetch method:
p shoes.fetch("hiking", "sneakers")   #=> "sneakers"

# You can also use symbols as keys in a hash. This is a common practice in Ruby:
shoes = {
    :summer => "sandals",
    :winter => "boots"
}

# To add a new key-value pair to a hash, you can use the following syntax:
shoes[:fall] = "sneakers"

p shoes   #=> {:summer=>"sandals", :winter=>"boots", :fall=>"sneakers"}

# Methods
# The keys and values methods return an array of the keys and values in the hash, respectively:
shoes = {
    :summer => "sandals",
    :winter => "boots",
    :fall => "sneakers"
}

p shoes.keys   #=> [:summer, :winter, :fall]
p shoes.values   #=> ["sandals", "boots", "sneakers"]

