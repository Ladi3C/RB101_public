=begin

Problem:  
          Write a method that takes one integer argument, which may be positive, negative, 
          or zero. This method returns true if the number's absolute value is odd. 
          You may assume that the argument is a valid integer value.
Examples:
          puts is_odd?(2)    # => false
          puts is_odd?(5)    # => true
          puts is_odd?(-17)  # => true
          puts is_odd?(-8)   # => false
          puts is_odd?(0)    # => false
          puts is_odd?(7)    # => true

Input:    integer => negative, positive, zero 
Output:   boolean 

Rules:    method
          takes one arguement
          arguement can be a positive, negative integer or zero
          *** DO NOT USE ODD? OR EVEN?

Questions: 
          Will the negative or zero integer have an effect on my intuitive code
          what is a numbers absolute value?


=end

def is_odd?(integer)
  integer % 2 == 1  
end

puts is_odd?(2) 
puts is_odd?(5)
puts is_odd?(-17)  
puts is_odd?(-8)
puts is_odd?(0)    # => false
puts is_odd?(7)    # => true