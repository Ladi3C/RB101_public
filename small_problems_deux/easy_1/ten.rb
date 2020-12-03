=begin
Problem:
        Write a method that takes two arguments,
         a positive integer and a boolean, 
         and calculates the bonus for a given salary. 
         If the boolean is true, 
         the bonus should be half of the salary. 

         If the boolean is false, the bonus should be 0.
Example:
        puts calculate_bonus(2800, true) == 1400
        puts calculate_bonus(1000, false) == 0
        puts calculate_bonus(50000, true) == 25000
Data Structure:
        Input:  integer & boolean 
        Output: integer
Algorithm:
        - define a method with two parameters, digits and boolean
        - if boolean then digits / 2
        - if false then return 0 
Code:
=end

# def calculate_bonus(digits, boolean)
#   if boolean
#     digits / 2
#   else 
#     return 0
#   end 
# end 

def calculate_bonus(salary, bonus)
  bonus ? (salary / 2) : 0
end

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000
