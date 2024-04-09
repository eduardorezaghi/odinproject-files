require_relative 'substrings'

describe 'substrings' do
  it 'returns a hash with the count of substrings found in the given string' do
    expect(substrings("Howdy partner, sit down! How's it going?", ["how", "sit", "going"])).to eq({"how"=>2, "sit"=>1, "going"=>1})
    expect(substrings("Hello, world!", ["hello", "world"])).to eq({"hello"=>1, "world"=>1})
    expect(substrings("Hello, world!", ["foo", "bar", "baz"])).to eq({})
    expect(substrings("Hello, world!", [])).to eq({})
    expect(substrings("", ["foo", "bar", "baz"])).to eq({})
    expect(substrings("buried treasure", ["buried", "trea"])).to eq({"buried"=>1, "trea"=>1})
  end

  it 'returns an empty hash if no substrings are found' do
    expect(substrings("This is a test", ["foo", "bar", "baz"])).to eq({})
    expect(substrings("", ["foo", "bar", "baz"])).to eq({})
  end
end