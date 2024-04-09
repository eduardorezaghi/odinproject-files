require_relative 'bubble_sort'

describe 'bubble_sort' do
  it 'sorts an array in ascending order' do
    expect(bubble_sort([4, 2, 7, 1, 5])).to eq([1, 2, 4, 5, 7])
    expect(bubble_sort([9, 3, 6, 2, 1])).to eq([1, 2, 3, 6, 9])
    expect(bubble_sort([5, 4, 3, 2, 1])).to eq([1, 2, 3, 4, 5])
    expect(bubble_sort([1, 2, 3, 4, 5])).to eq([1, 2, 3, 4, 5])
    expect(bubble_sort([1])).to eq([1])
  end

  it 'returns an empty array if the input array is empty' do
    expect(bubble_sort([])).to eq([])
  end
end