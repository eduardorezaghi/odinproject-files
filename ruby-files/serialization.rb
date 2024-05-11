# Marshal
data = { name: "Alice", age: 30 }
serialized_data = Marshal.dump(data)

# ... later

deserialized_data = Marshal.load(serialized_data)


# YAML
require 'yaml'

data = { name: "Bob", skills: ["Ruby", "Rails"] }
serialized_data = YAML.dump(data)

# save to a file
File.write('data.yml', serialized_data)

# ... later

serialized_data = File.read('data.yml')
deserialized_data = YAML.load(serialized_data)

# JSON
require 'json'

data = { name: "Charlie", score: 95 }
serialized_data = JSON.pretty_generate(data, indent: '  ')

# save to a file
File.write('data.json', serialized_data)

# ... later

serialized_data = File.read('data.json')
deserialized_data = JSON.parse(serialized_data)
