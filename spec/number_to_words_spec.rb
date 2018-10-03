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

  context 'Numbers between 100 and 1000' do
    it 'displays 100 as one-hundred' do
      expect(number_to_words(100)).to eq 'one-hundred'
    end

    it 'displays 900 as nine-hundred' do
      expect(number_to_words(900)).to eq 'nine-hundred'
    end

    it 'displays 999 as nine-hundred and nine-nine' do
      expect(number_to_words(999)).to eq 'nine-hundred and ninety-nine'
    end

    it 'displays 1000 as one-thousand' do
      expect(number_to_words(1000)).to eq 'one-thousand'
    end
  end
end
