=begin
Problem:
        Write a method that 
        determines and returns the ASCII string value of a string 
        that is passed in as an argument. 

        The ASCII string value is the sum of the ASCII values of every character in the string. 
        (You may use String#ord to determine the ASCII value of a character.)

        - every character including a space
Example:
        ascii_value('Four score') == 984
        ascii_value('Launch School') == 1251
        ascii_value('a') == 97
        ascii_value('') == 0
Data Structure:
        Input:  string
        Output: integer
Algorithm:
        - write a method that takes one string parameter
        - create a variable that hold an empty array
        - iterate through the the string and push the ord number into the empty array
        - add up the array        
=end

# def ascii_value(string)
#   return 0 if string.chars.empty?
#   ascii_arr = []
#   string.each_char do |char|
#     ascii_arr << char.ord
#   end 
#   ascii_arr.inject(:+)
# end

def ascii_value(string)
  sum = 0
  string.each_char { |char| sum += char.ord}
  sum
end
p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('') == 0