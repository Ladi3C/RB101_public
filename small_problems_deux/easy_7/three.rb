=begin
Problem:
      Write a method 
      that takes a single String argument 
      and returns a new string 
      that contains the original value of the argument 
      with the first character of every word capitalized 
      and all other letters lowercase.

      You may assume that words are any sequence of non-blank characters.
Example:
      word_cap('four score and seven') == 'Four Score And Seven'
      word_cap('the javaScript language') == 'The Javascript Language'
      word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'
Data Structure:
      Input: String
      Output: NEW string
Edgecases:
      - the argument may have capitalized letters
      - words in quotes are not capitalized

Algorithm:
      - lowercase the string
      - 
=end

def word_cap(sentence)
  sentence.downcase.split.map { |word| word.capitalize }.join(' ')
end


p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'
