=begin
Problem:
        Write a method 
        that takes a sentence string as input, 
        and returns the same string 
        with any sequence of the words 
        'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine' 
        converted to a string of digits.
Example:

word_to_digit('Please call me at five five five one two three four. Thanks.') == 
              'Please call me at 5 5 5 1 2 3 4. Thanks.'

Data Structure:
        Input:  String
        Output: String
Algorithm:
      - Edgecases:
          - what if the word has punctuaton attached to it

      build a hash that can reference number words as keys and number strings to values
      convert the string into an array
      iterate through the array
      if the word includes one of the keys then replace it with the value

      1. find out how to access a hash properly to get the return value desired.

=end

NUM_STRINGS = {
  'zero' => '0',
  'one'  => '1',
  'two'  => '2',
  'three'=> '3',
  'four' => '4',
  'five' => '5',
  'six'  => '6',
  'seven'=> '7',
  'eight'=> '8',
  'nine' => '9'
}

def word_to_digit(strngs)
  strings = strngs.dup
  keys = NUM_STRINGS.keys
  strings.delete('.').split.map do |word|
    if keys.include?(word)
      strings.sub!(word, NUM_STRINGS[word])
    end 
  end
  p strings
end

p word_to_digit('Please call me at five five five one two three four. Thanks.') 

p word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'