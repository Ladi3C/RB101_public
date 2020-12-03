
=begin
Problem:
        Write a method that takes one argument, 
        a string containing one or more words, 
        and returns the given string with words 
        that contain five or more characters reversed. 
        Each string will consist of only letters and spaces. 
        Spaces should be included only when more than one word is present.
Example:
        puts reverse_words('Professional')          # => lanoisseforP
        puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
        puts reverse_words('Launch School')         # => hcnuaL loohcS
Data Structure:
        Input:  string
        Output: string
        Use an Array

Algorithm: 
turn the string into an array
iterate through the array 
if conditional statement
  if the word has five or more characters then reverse it
convert the array back to a string
=end

def reverse

def reverse_words(words)
  words_arr = words.split
  words_arr.map do |word|
    word.reverse! if word.size >= 5
  end
  words_arr.join(' ') 
end

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS

