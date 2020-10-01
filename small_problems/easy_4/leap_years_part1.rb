=begin

Problem: 
          Assume this rule is good for any year greater than year 0. 
          Write a method that takes any year greater than 0 as input, 
          and returns true if the year is a leap year, or false if it is not a leap year.
Example: 
          below

Input:  Integer
Output: boolean

Rules:    Leap year : 
          year % 4 == 0  
          year % 400 == 0
          
          if year % 100 == 0
            year % 400 == 0

=end

# def leap_year?(year)
#   if year % 400 == 0
#     true
#   elsif year % 100 == 0
#     false
#   else 
#     year % 4 == 0
#   end 
# end

def leap_year?(year)
  (year % 400 == 0) || (year % 4 == 0 && year % 100 != 0)
end  

p leap_year?(2016) == true
p leap_year?(2015) == false
p leap_year?(2100) == false
p leap_year?(2400) == true
p leap_year?(240000) == true
p leap_year?(240001) == false
p leap_year?(2000) == true
p leap_year?(1900) == false
p leap_year?(1752) == true
p leap_year?(1700) == false
p leap_year?(1) == false
p leap_year?(100) == false
p leap_year?(400) == true