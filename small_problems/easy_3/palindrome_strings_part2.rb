=begin

Problem: 

        Write another method that returns true if the string passed as an 
        argument is a palindrome, false otherwise. This time, however, your 
        method should be case-insensitive, and it should ignore all 
        non-alphanumeric characters. If you wish, you may simplify things 
        by calling the palindrome? method you wrote in the previous exercise.

        Write method real_palindrome
        String as parameter
        RETURNS true if palindroe
        RETURNS false if not
        CASE INSENSITIVE
        IGNORE non-alphanumeric characters

Example: 
        real_palindrome?('madam') == true
        real_palindrome?('Madam') == true           # (case does not matter)
        real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
        real_palindrome?('356653') == true
        real_palindrome?('356a653') == true
        real_palindrome?('123ab321') == false
=end 


def palindrome?(string)
  string == string.reverse
end 

def real_palindrome?(string)
  string = string.downcase.delete('^a-z0-9')
  palindrome?(string)
end 



p real_palindrome?('madam') == true
p real_palindrome?('Madam') == true           # (case does not matter)
p real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
p real_palindrome?('356653') == true
p real_palindrome?('356a653') == true
p real_palindrome?('123ab321') == false



