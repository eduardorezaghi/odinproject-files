require '../spec_helper'
require './stock_picker'

RSpec.describe 'Validate Stock Picker' do
  describe '#stock_picker' do
    context 'when given an array of stock prices' do
      it 'returns the pair of days with the greatest difference' do
        expect(stock_picker([17,3,6,9,15,8,6,1,10])).to eq([1,4])
      end

      it 'returns the pair of days with the greatest difference' do
        expect(stock_picker([17,3,6,9,15,8,6,1,10,20])).to eq([7,9])
      end

      it 'returns the pair of days with the greatest difference' do
        expect(stock_picker([17,3,6,9,15,8,6,1,10,20,15])).to eq([7,9])
      end

      it 'returns the pair of days with the greatest difference' do
        expect(stock_picker([17,3,6,9,15,8,6,1,10,20,15,10])).to eq([7,9])
      end
    end
  end
end
