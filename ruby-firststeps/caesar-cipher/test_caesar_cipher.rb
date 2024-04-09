require '../spec_helper'
require './caesar_cipher'

RSpec.describe 'CaesarCipher' do
  describe '#caesar_cipher' do
    context 'when given a string and a shift factor' do
      it 'returns the string with each letter shifted by the factor' do
        expect(caesar_cipher('What a string!', 5)).to eq('Bmfy f xywnsl!')
      end

      it 'wraps around the alphabet when shifting past z' do
        expect(caesar_cipher('Zebra', 1)).to eq('Afcsb')
      end

      it 'maintains the case of the original letters' do
        expect(caesar_cipher('Hello World', 5)).to eq('Mjqqt Btwqi')
      end
    end
  end
end
