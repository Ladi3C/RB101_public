=begin
Problem:
        Write a method 
        that takes a string, 
        and then returns a hash 
        that contains 3 entries: 
        one represents the percentage of characters in the string that are lowercase letters, 
        one the percentage of characters that are uppercase letters, 
        and one the percentage of characters that are neither.

        You may assume that the string will always contain at least one character.
=end

def letter_percentages(string)
  total = string.size
  letter_hsh = {}
  letter_hsh[:lowercase] = string.count('a-z').to_f/total * 100
  letter_hsh[:uppercase] = string.count('A-Z').to_f/total * 100
  letter_hsh[:neither]   = string.count('^a-zA-Z').to_f/total * 100
  letter_hsh
end

p letter_percentages('abCdef 123')# == { lowercase: 50, uppercase: 10, neither: 40 }
p letter_percentages('AbCd +Ef')# == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
p letter_percentages('123') #== { lowercase: 0, uppercase: 0, neither: 100 }
p letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
p letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }