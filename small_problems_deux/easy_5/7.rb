=begin
Problem: 
        Modify the word_sizes method from the previous exercise 
        to exclude non-letters 
        when determining word size. 
        For instance, the length of "it's" is 3, not 4.

=end
ALPHA = ("a".."z").to_a + ("A".."Z").to_a

def word_sizes(sentence)
  sentence = sentence.delete('^a-zA-Z ')
  word_count = sentence.split.map { |word| word.size}
  result = {}
  word_count.uniq.each do |num|
    result[num] = word_count.count(num)
  end 
  result
  end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') == {}