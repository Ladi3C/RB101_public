=begin
Problem:
        If you take a number like 735291, 
        and rotate it to the left, 
        you get 352917. 

        If you now keep the first digit fixed in place, 
        and rotate the remaining digits, you get 329175. 
        Keep the first 2 digits fixed in place and 
        rotate again to 321759. 
        Keep the first 3 digits fixed in place 
        and rotate again to get 321597. 
        Finally, keep the first 4 digits fixed in place and 
        rotate the final 2 digits to get 321579. 
        The resulting number is called the maximum rotation 
        of the original number.

        Write a method 
        that takes an integer as argument, 
        and returns the maximum rotation of that argument. 
        You can (and probably should) 
        use the rotate_rightmost_digits method from the previous exercise.

        Note that you do not have to handle multiple 0s.
          735291
          352917 # rotated to the left
          329175 # keep first digit in place and rotate everything else
          321759 # keep the first 2 digits in place and then rotate
          321597 # keep the first 3 digits in place and then rotate
          321579 # keep the first 4 digits in place and rotate == MAXIMUM ROTATION


Example:
        max_rotation(735291) == 321579
        max_rotation(3) == 3
        max_rotation(35) == 53
        max_rotation(105) == 15 # the leading zero gets dropped
        max_rotation(8_703_529_146) == 7_321_609_845
Data Structure:
        Input : integer
        Output: integer
=end

def rotate_array(arr)
  arr[1..-1] + [arr[0]]
end

def rotate_rightmost_digits(digits, n)
  all_digits = digits.to_s.chars
  all_digits[-n..-1] = rotate_array(all_digits[-n..-1])
  all_digits.join.to_i
end

# def max_rotation(digits)
#   all_digits = digits.to_s.chars

#   if all_digits.size == 1
#     all_digits.join.to_i
#   elsif all_digits.size == 2
#     left_rotate = rotate_array(all_digits).join.to_i
#   elsif all_digits.size == 3
#     left_rotate = rotate_array(all_digits).join.to_i
#     rotate_array(left_rotate.to_s.chars).join.to_i
#   else 
#     left_rotate = rotate_array(all_digits).join.to_i
#     first = rotate_rightmost_digits(left_rotate, 5)
#     second = rotate_rightmost_digits(first, 4)
#     third = rotate_rightmost_digits(second, 3)
#     final = rotate_rightmost_digits(third, 2)
#   end 
# end

def max_rotation(digits)
  number_digits = digits.to_s.size
  number_digits.downto(2) do |n|
    digits = rotate_rightmost_digits(digits, n)
  end
  digits
end

# p max_rotation(735291) #== 321579
# p max_rotation(3) #== 3
# p max_rotation(35) #== 53
# p max_rotation(105) #== 15 # the leading zero gets dropped
# p max_rotation(8_703_529_146) #== 7_321_609_845

p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845