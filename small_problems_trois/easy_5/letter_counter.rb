=begin
Problem:
        Write a method
        that takes a string with one or more space separated words
        and returns a hash that shows the number of words of different sides

        words consisit of any string of characaters that do not include a space.

        - punctuation is included note seven.
Example: 
        word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
        word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
        word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
        word_sizes('') == {}
Data Structure:
        Input :  string
        Output:  hash
Algorithm:
        - create method `word_sizes` with `sentence` being the parameter
        - convert the sentence into an array where each word is separated
          - check to see if #split includes punctuation ... YES IT DOES
        - iterate through the array using `#map` and return the length of each word, assign that to `counts`
        - set `keys` variable to return `uniq` called on counts
        - create a hash variable `letter_count_hsh` and assign each letter in `keys` to how many of those keys exist
          in counts.


=end

def word_sizes(sentence)
  counts = sentence.split.map { |word| word.length}
  keys = counts.uniq.sort
  letter_count_hsh = Hash.new
  keys.each { |num| letter_count_hsh[num] = counts.count(num)}
  letter_count_hsh
end

p word_sizes('Four score and seven.') #== { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') #== { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") #== { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') #== {}

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}