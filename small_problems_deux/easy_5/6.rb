=begin
Problem: 
        Write a method that takes a string 
        with one or more space separated words 
        and returns a hash 
        that shows the number of words of different sizes.
Example: 
        word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
        word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
        word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
        word_sizes('') == {}
Data Structure:
        Input: string
        Output: hash
Algorithm:
        - create a method with a string parameter
        - 

=end

# def word_count(sentence)
#   words = sentence.split
#   word_count = []
#   words.each do |word|
#     word_count << word.size
#   end 
#   word_count
# end 

# def word_sizes(sentence)
#   letter_count = word_count(sentence).sort
#   keys = letter_count.uniq
#   count_hsh = {}
#   counter = 0
#   loop do
#     break if counter == keys.size
#     current_key = keys[counter]
#     current_value = letter_count.count(current_key)
#     count_hsh[current_key] = current_value

#     counter += 1
#   end 
#   count_hsh
# end

def word_sizes(sentence)
  word_count = sentence.split.map { |word| word.size}
  result = {}
  word_count.uniq.each do |num|
    result[num] = word_count.count(num)
  end 
  result
  end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}