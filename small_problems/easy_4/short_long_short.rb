=begin

Problem:
          Write a method that takes two strings as arguments, 
          determines the longest of the two strings, and then 
          returns the result of concatenating the shorter string, 
          the longer string, and the shorter string once again. 
          You may assume that the strings are of different lengths.
Rules:  
          Write a method
          Two STRING Parameter
          determines the longest string
          RETURNS short strings, long string, short string CONCATENATED
          end 

=end

def short_long_short(string1, string2)
str_arr = [string1, string2]
  if string1.size < string2.size
     str_arr[0] = string1
     str_arr[1]= string2
     str_arr << string1
  
  elsif string1.size > string2.size
     str_arr[1] = string1 
     str_arr[0] = string2
     str_arr << string2
  end 

str_arr.join      
end  

p short_long_short('abc', 'defgh') == "abcdefghabc"
p short_long_short('abcde', 'fgh') == "fghabcdefgh"
p short_long_short('', 'xyz') == "xyz"