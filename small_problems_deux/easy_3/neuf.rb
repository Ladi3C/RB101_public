=begin
Problem:
        Write another method that returns true 
        if the string passed as an argument is a palindrome, 
        false otherwise. 

        This time, however, your method should be case-insensitive, 
        and it should ignore all non-alphanumeric characters. 
        If you wish, you may simplify things by calling the palindrome? 
        method you wrote in the previous exercise.
Example:
        real_palindrome?('madam') == true
        real_palindrome?('Madam') == true           # (case does not matter)
        real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
        real_palindrome?('356653') == true
        real_palindrome?('356a653') == true
        real_palindrome?('123ab321') == false
Data Structure:
        Input:  string
        Output: boolean 
=end
ALPHA_NUM = ("a".."z").to_a + ("A".."Z").to_a + (1..9).to_a

def alphanumerics(words)
  stripped_words = '' 
  words.each_char do |word|
      stripped_words << word if ALPHA_NUM.include?(word)
  end
  stripped_words
end

#alphanumerics("Madam, I'm Adam")

def palindrome?(str)
  str.reverse == str
end

def real_palindrome?(real_str)
 palindrome?(alphanumerics(real_str).downcase)
end

p real_palindrome?('madam') #== true
p real_palindrome?('Madam') #== true           # (case does not matter)
p real_palindrome?("Madam, I'm Adam") #== true # (only alphanumerics matter)
p real_palindrome?('356653') #== true
p real_palindrome?('356a653') #== true
p real_palindrome?('123ab321') #== false