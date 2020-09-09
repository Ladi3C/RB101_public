=begin

Problem: Write a method that takes one integer argument, which may be positive, 
         negative, or zero. This method returns true if the number's absolute value is odd. 
         You may assume that the argument is a valid integer value.

Example: 



puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7)    # => true

Input:   integer that can be positive, negative, zero
Output:  boolean 

Algorithm:
- define method is_odd 
- takes an integer that can be positive, negative, zero
- checks to see if integer is odd


=end

def is_odd?(number)
  number % 2 == 1
end 
# def is_odd?(integer)
#   integer.odd?
# end 




puts is_odd?(2)
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7)    # => true