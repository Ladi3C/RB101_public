=begin
Problem: 
        In the modern era under the Gregorian Calendar,
        leap years occur in every year that is evenly divisible by 4, 
        unless the year is also divisible by 100. 

        If the year is evenly divisible by 100, 
        then it is not a leap year unless the year is evenly divisible by 400.

        Assume this rule is good for any year greater than year 0. 
        Write a method that takes any year greater than 0 as input, 
        and returns true if the year is a leap year, or false if it is not a leap year.
Example:
        leap_year?(2016) == true
        leap_year?(2015) == false
        leap_year?(2100) == false
        leap_year?(2400) == true
        leap_year?(240000) == true
        leap_year?(240001) == false
        leap_year?(2000) == true
        leap_year?(1900) == false
        leap_year?(1752) == true
        leap_year?(1700) == false
        leap_year?(1) == false
        leap_year?(100) == false
        leap_year?(400) == true
Data Structure:
        Input:  Integer
        Output: Boolean
Algorithm:
        - year % 4 == 0                                         => LEAP YEAR
        - year % 4 == 0 && year % 100 == 0                      => NOT LEAP YEAR
        - year % 4 == 0 && year % 100 == 0 && year % 400 == 0   => LEAP YEAR
      
        - write a method with one integer parameter (year)
        - write a conditional statement based on the facts above
Code:
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