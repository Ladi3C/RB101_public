=begin
Problem:
        Write a method 
        that takes a number as an argument. 

        If the argument is a positive number, 
        return the negative of that number. 

        If the number is 0 or negative, 
        return the original number.
Example:
        negative(5) == -5
        negative(-3) == -3
        negative(0) == 0      # There's no such thing as -0 in ruby
Data Structure:
        Input : Integer 
        Output: Integer
Algorithm:
        - if the number is > 0 then -(number)
          if the number is equal to 0 or less than 0 return that number
Code:
=end

# def negative(num)
#   if num == 0 || num < 0
#     num
#   elsif num > 0 
#     -num
#   end 
# end

def negative(num)
  num > 0 ? -num : num
end
p negative(5) #== -5
p negative(-3) #== -3
p negative(0) #== 0      # There's no such thing as -0 in ruby

p negative(5) == -5
p negative(-3) == -3
p negative(0) == 0      # There's no such thing as -0 in ruby
