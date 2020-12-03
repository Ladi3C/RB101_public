=begin
Problem: 
        Write a method that takes two strings as arguments, 
        determines the longest of the two strings, 
        and then returns the result of concatenating the shorter string,
         the longer string, 
         and the shorter string once again. 
         You may assume that the strings are of different lengths.
Example: 
        short_long_short('abc', 'defgh') == "abcdefghabc"
        short_long_short('abcde', 'fgh') == "fghabcdefgh"
        short_long_short('', 'xyz') == "xyz"
Data Structure:
        Input:  two strings
        Output: one long string
Algorithm:
        - define a method with parameter str1 and parameter str2
Code:
=end
def short_long_short(str1, str2)
  if str1.length > str2.length
    str2 + str1 + str2
  elsif str2.length > str1.length
    str1 + str2 + str1
  end  
end

p short_long_short('abc', 'defgh') == "abcdefghabc"
p short_long_short('abcde', 'fgh') == "fghabcdefgh"
p short_long_short('', 'xyz') == "xyz"