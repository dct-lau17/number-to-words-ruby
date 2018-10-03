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

  context 'Numbers less than 100' do
    it 'displays 11 as eleven' do
      expect(number_to_words(11)).to eq 'eleven'
    end

    it 'displays 20 as twenty' do
      expect(number_to_words(20)).to eq 'twenty'
    end

    it 'displays units in tens' do
      expect(number_to_words(70)).to eq 'seventy'
    end

    it 'displays 99 as ninety-nine' do
      expect(number_to_words(99)).to eq 'ninety-nine'
    end
  end
end
