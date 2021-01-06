=begin
Problem: 
        Write a method 
        that takes a string 
        with one or more space separated words 
        and returns a hash that shows the number of words of different sizes.

        Words consist of any string of characters that do not include a space.
        - punctuation in a word is part of the word and is counted in the word
Example:
        word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
        word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
        word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
        word_sizes('') == {}
Data Structure:
        Input : String
        Output: Hash
Algorithm:
       - create `count_arr` and assign it to an empty_arr
       - convert sentence into an array and iterate through it and push the length of each word
         into `count_arr`
       - create `length_keys` and assign it to duplicates removed from `count_arr`
       - create `count_hsh` and assign it to an empty hsh
       - iterate through `length_keys` and at each iteration assign each item as keys to `count_hsh` with values 
       as how many of each key is in `count_arr`.

=end


def word_sizes(sentence)
  count_arr = sentence.split.map { |word| word.length }.sort
  length_keys = count_arr.uniq
  count_hsh = {}
  length_keys.each do |num|
    count_hsh[num] = count_arr.count(num)
  end
  count_hsh
end

p word_sizes('Four score and seven.') #== { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') #== { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") #== { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') #== {}

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}