=begin

Problem:      Write a method that takes one integer argument, which may be positive, 
              negative, or zero. This method returns true if the number's absolute value 
              is odd. You may assume that the argument is a valid integer value.

Example:      puts is_odd?(2)    # => false
              puts is_odd?(5)    # => true
              puts is_odd?(-17)  # => true
              puts is_odd?(-8)   # => false
              puts is_odd?(0)    # => false
              puts is_odd?(7)    # => true

Rules:        - write a method is_odd?
              - takes one argument (integer)
              - integer may be positive, negative, zero
              - method should return BOOLEAN
              - return true IF number is odd.

=end 

def is_odd?(integer)
  integer % 2 == 1
end 

puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7)    # => true