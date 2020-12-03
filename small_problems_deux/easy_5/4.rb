
=begin
Problem:
        Given a string of words separated by spaces, 
        write a method that takes this string of words 
        and returns a string in which the first and last letters of every word are swapped.

        You may assume that every word contains at least one letter, 
        and that the string will always contain at least one word.
         You may also assume that each string contains nothing but words and spaces
Example:
        swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
        swap('Abcde') == 'ebcdA'
        swap('a') == 'a'
Data Structure:
        Input:  string
        Output: string
Algorithm:
        convert the sentence to an array
        swap indices
code:
=end

def swap_first_last_chars(word)
  word[0], word[-1] = word[-1], word[0]
  word
end

def swap(string)
  result = string.split.map do |word|
    swap_first_last_chars(word)
  end 
  result.join(' ')
end




p swap('Oh what a wonderful day it is') #== 'hO thaw a londerfuw yad ti si'
p swap('Abcde') #== 'ebcdA'
p swap('a') #== 'a'
