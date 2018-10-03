require 'number_to_words'

describe '#number_to_words' do
  context 'Numbers between 0 and 10' do
    it 'displays 1 as one' do
      expect(number_to_words(1)).to eq 'one'
    end

    it 'displays 10 as two' do
      expect(number_to_words(10)).to eq 'ten'
    end
  end
end
