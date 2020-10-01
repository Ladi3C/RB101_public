=begin

Problem: 
          Write a method that determines and returns the ASCII string 
          value of a string that is passed in as an argument. The ASCII 
          string value is the sum of the ASCII values of every character 
          in the string. (You may use String#ord to determine the ASCII 
          value of a character.)

          -Write a method
          -Determine the ASCII value of each character
          -RETURN the ASCII STRING VALUE = the sum

Input:    string
Output:   integer

Data structure : iterator to go through each character in a string
                 array to store the numeric value of each character
                 use reduce or sum to return the sum of the values in that array
Pseudo-Code: 
- Define method ascii_value
- Initialize STRING as parameter
- Initialize empty array
- call each_char on string and push the String#ord value of each character
- sum the array
=end

def ascii_value(string)
  ord_values = []

  if string == ""
    result = 0
  else 
    string.each_char do |char|
    ord_values << char.ord
  end 

  result = ord_values.reduce(:+)
end
end

p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('') == 0