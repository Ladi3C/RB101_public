=begin

Problem: Given a string of words separated by spaces
         Write a method that takes this string of words and 
         RETURNS a string in which the first and last letters of every word are swapped 

=end

def swap_first_last_characters(word)
  word[0], word[-1] = word[-1], word[0]
  word
end 

def swap(words)
  result = words.split.map do |word|
    swap_first_last_characters(word)
  end 
  result.join(' ')
end 

p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'