=begin

Problem: 

        Write a method that returns true if its integer argument is palindromic, 
        false otherwise. A palindromic number reads the same forwards and backwards.


Algo: Write method palindormic_number?
      RETURNS TRUE == integer is palindromic
      RETURNS FALSE == integer is NOT palindromic

=end

def palindromic_number?(digits)
  digits.to_s == digits.to_s.reverse
end 




p palindromic_number?(34543) #== true
p palindromic_number?(123210) #== false
p palindromic_number?(22) #== true
p palindromic_number?(5) #== true