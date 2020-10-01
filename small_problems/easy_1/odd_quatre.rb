=begin

Problem: Write a method that takes one integer argument, 
         which may be positive, negative, or zero. This 
         method returns true if the number's absolute value 
         is odd. You may assume that the argument is a valid integer value.

Example:  puts is_odd?(2)    # => false
          puts is_odd?(5)    # => true
          puts is_odd?(-17)  # => true
          puts is_odd?(-8)   # => false
          puts is_odd?(0)    # => false
          puts is_odd?(7)    # => true

Rules:   Method returns true if the numbers absolute value is odd.

Algorithm:

- def method is_odd?
- set one parameter takes integer
- returns true if num is odd


=end

def is_odd?(num)
  num % 2 == 1
end 


puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7)    # => true