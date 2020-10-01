=begin

Problem: 

        Write a method that returns true if the string passed as an argument 
        is a palindrome, false otherwise. A palindrome reads the same forward 
        and backward. For this exercise, case matters as does punctuation and spaces.

Examples: 

        palindrome?('madam') == true
        palindrome?('Madam') == false          # (case matters)
        palindrome?("madam i'm adam") == false # (all characters matter)
        palindrome?('356653') == true

Rules : 
            Write a method
            RETURNS true IF the string is a PALINDROME
            RETURNS false if it does not 
            Case SENSITIVE
            Punctuation and spaces
  
  palindrome: a word that reads the same forward and backward
=end

def palindrome?(string)
  string == string.reverse
end 


p palindrome?('madam') == true
p palindrome?('Madam') == false          # (case matters)
p palindrome?("madam i'm adam") == false # (all characters matter)
p palindrome?('356653') == true