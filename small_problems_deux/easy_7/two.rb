=begin
Problem: 
        Write a method
        that takes a string, 
        
        and then returns a hash 
        that contains 3 entries: 
        
        lowercase:   the number of characters in the string that are lowercase letters, 
        
        uppercase:   the number of characters that are uppercase letters, 
        
        neither: and one the number of characters that are neither.
Example:
        letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
        letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
        letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
        letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }
        Edgecases:
        - spaces are part of the neither category so include them
        - an empty string can be an argument as well
Data Structure:
        Input:  String
        Output: Hash

Algorithm:
        - create three variables that references an array of each criteria
        - set a variable for lowercase and uppercase 
        - push any elements that include lowercase or uppercase to the pertaining array
        create an empty hash with criteria as keys and counting the array elements of each
Code:
=end

LOWER = ("a".."z").to_a
UPPER = ("A".."Z").to_a

def letter_case_count(string)
  upper = []
  lower = []
  misc = []

  string.chars.each do |element|
    if LOWER.include?(element)
      lower << element
    elsif UPPER.include?(element)
      upper << element
    else
      misc << element
    end
  end 
  {lowercase: lower.size, uppercase: upper.size, neither: misc.size}
end 

p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }