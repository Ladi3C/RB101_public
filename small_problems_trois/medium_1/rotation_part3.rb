require 'pry'
=begin
Problem:
        Write a method 
        that takes an integer as argument, 
        and returns the maximum rotation of that argument. 
        You can (and probably should) use the rotate_rightmost_digits method from the previous exercise.

        Note that you do not have to handle multiple 0s.
        - need to take into account how many times rotation is being performed..
        - 
Example:
        735291 # next: first digit
        352917 # next: hold first digit
        329175 # next: hold first two
        321759 # next: hold first three
        321597 # next: hild first four
        321579 << MAXIMUM ROTATION of ORIGINAL NUMBER
=end

def rotate_array(array)
  array[1..-1] + [array[0]]
end

def rotate_rightmost_digits(number, n)
  all_digits = number.to_s.chars
  all_digits[-n..-1] = rotate_array(all_digits[-n..-1])
  all_digits.join.to_i
end
# p rotate_rightmost_digits(735291, 2)
# p rotate_rightmost_digits(352917, 6)

def max_rotation(number)
  number_digits = number.to_s.size
  number_digits.downto(2) do |n|
    number = rotate_rightmost_digits(number, n)
    binding.pry
  end
  number
  
end

p max_rotation(735291) #== 321579
# p max_rotation(3) #== 3
# p max_rotation(35) #== 53
# p max_rotation(105) #== 15 # the leading zero gets dropped
# p max_rotation(8_703_529_146) #== 7_321_609_845