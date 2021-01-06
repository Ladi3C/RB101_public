=begin
Problem:
          Write a method 
          that takes a sentence string as input, 
          and returns the same string 
          with any sequence of the words 
          'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine' 
          converted to a string of digits.



=end
DIGITS = {
  'zero'  => '0',
  'one'   => '1',
  'two'   => '2',
  'three' => '3',
  'four'  => '4',
  'five'  => '5',
  'six'   => '6',
  'seven' => '7',
  'eight' => '8',
  'nine'  => '9'
}

def word_to_digit(string)
  strings = string.dup
  strings.delete('.').split.map do |word|
    strings.gsub!(word, DIGITS[word]) if DIGITS.keys.include?(word)
  end
  strings
end


p word_to_digit('Please call me at five five five one two three four. Thanks.')
# == 'Please call me at 5 5 5 1 2 3 4. Thanks.'