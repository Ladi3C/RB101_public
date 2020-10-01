=begin

Problem: 

          Write a method that takes two arguments, a positive integer and a boolean,
          and calculates the bonus for a given salary. If the boolean is true, the bonus 
          should be half of the salary. If the boolean is false, the bonus should be 0.

Example: 
  
          puts calculate_bonus(2800, true) == 1400
          puts calculate_bonus(1000, false) == 0
          puts calculate_bonus(50000, true) == 25000

Rules: 

          Define method with an integer and boolean
          Calculates the bonus for a given salary.
          If true, the bonus is half the salary
          IF false the bonus is 0
Algorithm:

Define method calculate_bonus
Initialize parameter integer, and boolean

=end

def calculate_bonus(salary, bonus)
  if bonus 
    salary / 2
  else 
    0
  end 
end 

# def calculate_bonus(salary, bonus)
#   bonus ? (salary / 2) : 0
# end


puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000