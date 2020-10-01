=begin

Write a method 
takes a string with one or more space separated words and 
returns a hash that shows the number of words of different sizes.

Words consist of any string of characters that do not include a space.

=end

def word_sizes(sentence)
  counts = {}
  words = sentence.split
  counter = 0
  loop do
    break if counter == words.size
    current_key = word[counter].size
    current_value = 
  end 
end 

word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
word_sizes('') == {}