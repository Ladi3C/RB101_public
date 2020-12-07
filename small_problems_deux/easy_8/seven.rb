=begin
Problem:
        Write a method 
        that takes a string, 
        and returns a new string 
        in which every character is doubled.
Example:
        repeater('Hello') == "HHeelllloo"
        repeater("Good job!") == "GGoooodd  jjoobb!!"
        repeater('') == ''
Data Structure:
        Input : string
        Output: string
Algorithm:
        - convert the string into an array
        - iterate through the array and double each element
Code:
=end


def repeater(string)
  string_arr = string.chars
  doubled_string = ''
  string_arr.each do |char|
    doubled_string << char * 2
  end 
  doubled_string
end



p repeater('Hello') #== "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''