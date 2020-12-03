=begin
Problem: 
        Write a method that returns true
        if the string passed as an argument is a palindrome, 
        false otherwise. 

        A palindrome reads the same forward and backward. 

        For this exercise, case matters as does punctuation and spaces.
Example:
        palindrome?('madam') == true
        palindrome?('Madam') == false          # (case matters)
        palindrome?("madam i'm adam") == false # (all characters matter)
        palindrome?('356653') == true
Data Structure:
        Input: string
        Output: boolean
Algorithm:
        - define a method with one string parameter
        - compare the string with the string reversed
Code:
=end

def palindrome?(str)
  str.reverse == str
end 

p palindrome?('madam') == true
p palindrome?('Madam') == false          # (case matters)
p palindrome?("madam i'm adam") == false # (all characters matter)
p palindrome?('356653') == true