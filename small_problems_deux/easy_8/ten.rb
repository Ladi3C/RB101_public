=begin
Problem:
        Write a method 
        that takes 
        a non-empty string argument, 

        and returns the middle character 
        or characters of the argument. 

        If the argument has an odd length, 
        you should return exactly one character. 

        If the argument has an even length, 
        you should return exactly two characters.

        - white space is included
Example:
        center_of('I love ruby') == 'e'
        center_of('Launch School') == ' '
        center_of('Launch') == 'un'
        center_of('Launchschool') == 'hs'
        center_of('x') == 'x'
Data Structure:
        Input : String
        Output: String
Algorithm: 
        - AHHH!!!
        - count the length of the string
        - if length is odd? return index/2
        - if length is even? return index/2 - 1 ask for specified amount of characters
=end

def center_of(string)
  string_length = string.length
  if string_length.odd?
    string[(string_length/2)]
  else
    string[(string.length/2)-1, 2]
  end 
end 

p center_of('I love ruby') #== 'e'
p center_of('Launch School') #== ' '
p center_of('Launch') #== 'un'
p center_of('Launchschool') #== 'hs'
p center_of('x') #== 'x'

p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'