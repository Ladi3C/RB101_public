=begin
Problem: 
        Write a method 
        that takes a string, 
        and then returns a hash 
        that contains 3 entries: 
        number of characters : lowercase letters, 
        number of characters : uppercase letters, 
        number of characters : neither.
Example:
        letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
        letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
        letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
        letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }
Data Structure:
        Input : String
        Output: Hash
Algorithm:
=end

def letter_case_count(string)
  count_hsh = { lowercase: 0, uppercase: 0, neither: 0}
  count_hsh[:lowercase] += string.count('a-z')
  count_hsh[:uppercase] += string.count('A-Z')
  count_hsh[:neither] += string.count('^a-zA-z')
  count_hsh
end

p letter_case_count('abCdef 123') #== { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') #== { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') #== { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') #== { lowercase: 0, uppercase: 0, neither: 0 }

p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }