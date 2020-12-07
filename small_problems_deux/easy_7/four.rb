=begin
Problem:
        Write a method
        that takes a string as an argument 
        and returns a new string 
        in which every uppercase letter 
        is replaced by its lowercase version, 
        and every lowercase letter by its uppercase version. 
        All other characters should be unchanged.

        You may not use String#swapcase; write your own version of this method.

        Edgecases:
        none really
Example:
        swapcase('CamelCase') == 'cAMELcASE'
        swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'
Data Structure:
        Input : String
        Output: String
Algorithm:
        - convert string into array
        - iterate through then
        - create a lowercase constant
        - create an uppercase constant
        - check to see if each element is which and turn it to the upper or lowercase if its vice versa
        - change it back to a string or maybe push it to an empty variable that holds an empty string
Code:
=end

LOWER = ("a".."z").to_a
UPPER = ("A".."Z").to_a

def swapcase(strings)
   new_strings = strings.chars.map do |char|
    if LOWER.include?(char)
      char.upcase
    elsif UPPER.include?(char)
      char.downcase
    else
      char
    end
  end
  new_strings.join
 end
  

p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'
