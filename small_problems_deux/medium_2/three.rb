=begin
Problem: 
        In the easy exercises, 
        we worked on a problem 
        where we had to count 
        the number of uppercase and lowercase characters, 
        as well as characters that were neither of those two. 

        Now we want to go one step further.

        Write a method that takes a string, 
        and then returns a hash that contains 3 entries: 
        one represents the percentage of characters in the string that are lowercase letters, 
        one the percentage of characters that are uppercase letters, 
        and one the percentage of characters that are neither.

        You may assume that the string will always contain at least one character.
Example:
        letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
        letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
        letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }
Data Structure:
        Input : string
        Output: hash
Edgecases:
        - when counting the characters in a string, EVERYTHING IS INCLUDED, (SPACES AS WELL!)
Algorithm:
        - create method letter_percentages with a string parameter
        - create a hash with lowercase, uppercase, neither
        - iterate through the string by converting it into an array
        - then count lowercase, uppercase or neither
        - figure out the percentage of each and assign it to the hash


=end

LOWER = ('a'..'z').to_a
UPPER = ('A'..'Z').to_a

def letter_percentages(string)
  denominator = string.length
  lower = []
  upper = []
  neither = []
  result = {}
  string.chars.each do |char|
    if LOWER.include?(char)
      lower << char
    elsif UPPER.include?(char)
      upper << char
    else
      neither << char
    end
  end
result = {lowercase: lower.size.to_f/denominator * 100,
          uppercase: upper.size.to_f/denominator * 100,
          neither: neither.size.to_f/denominator * 100}
end


p letter_percentages('abCdef 123') #== { lowercase: 50, uppercase: 10, neither: 40 }
p letter_percentages('AbCd +Ef') #== { lowercase: 37.5, uppercase: 37.5, neither: 25 }
p letter_percentages('123') #== { lowercase: 0, uppercase: 0, neither: 100 }

p letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
p letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }