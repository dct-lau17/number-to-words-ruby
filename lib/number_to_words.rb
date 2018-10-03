WORDS = { 0 => 'zero',
          1 => 'one',
          2 => 'two',
          3 => 'three',
          4 => 'four',
          5 => 'five',
          6 => 'six',
          7 => 'seven',
          8 => 'eight',
          9 => 'nine',
          10 => 'ten',
          11 => 'eleven',
          12 => 'twelve',
          13 => 'thirteen',
          14 => 'fourteen',
          15 => 'fifteen',
          16 => 'sixteen',
          17 => 'seventeen',
          18 => 'eighteen',
          19 => 'nineteen',
          20 => 'twenty',
          30 => 'thirty',
          40 => 'forty',
          50 => 'fifty',
          60 => 'sixty',
          70 => 'seventy',
          80 => 'eighty',
          90 => 'ninety',
          100 => 'hundred',
          1000 => 'thousand' }.freeze

def number_to_words(int)
  if less_than_100?(int)
    tens(int)
  end
end

private

def less_than_100?(int)
  int < 100
end

def tens(int)
  WORDS[int] || convert_tens(int)
end

def convert_tens(num)
  int = num.to_s.split('')
  tens = [int[0] + '0'].join('').to_i
  units = int[1].to_i
  [WORDS[tens], WORDS[units]].join('-')
end
