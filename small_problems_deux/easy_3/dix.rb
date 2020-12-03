=begin
Problem: 
        Write a method that returns true 
        if its integer argument is palindromic, 
        false otherwise. 

        A palindromic number reads the same forwards and backwards.

Example:
        palindromic_number?(34543) == true
        palindromic_number?(123210) == false
        palindromic_number?(22) == true
        palindromic_number?(5) == true

Data Structure: 
        Input:  Integer
        Output: boolean

Algorithm:
          - convert integers to strings
          - reverse them
          - use #palindrome? methd to return boolean
          

=end
def palindrome?(str)
  str.reverse == str
end

def palindromic_number?(digits)
  palindrome?(digits.to_s)
end

p palindromic_number?(34543) == true
p palindromic_number?(123210) == false
p palindromic_number?(22) == true
p palindromic_number?(5) == true