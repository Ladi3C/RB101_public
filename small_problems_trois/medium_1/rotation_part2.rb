=begin
Problem:
        Write a method 
        that can rotate the last n digits of a number. 

        Note that rotating just 1 digit results in the original number being returned.
        
        You may use the rotate_array method from the previous exercise if you want. (Recommended!)
        You may assume that n is always a positive integer.
Example:
        rotate_rightmost_digits(735291, 1) == 735291 
        rotate_rightmost_digits(735291, 2) == 735219 #91
        rotate_rightmost_digits(735291, 3) == 735912 #912
        rotate_rightmost_digits(735291, 4) == 732915 #2915
        rotate_rightmost_digits(735291, 5) == 752913 #52913
        rotate_rightmost_digits(735291, 6) == 352917 #352917

=end

def rotate_array(array)
  array[1..-1] + [array[0]]
end

#p rotate_array([7, 3, 5, 2, 9, 1])

# def rotate_rightmost_digits(digit, times)
#   digit_arr = digit.to_s.chars.map(&:to_i)
#   rotated = rotate_array(digit_arr[-times..-1])
#   result = digit_arr[0..-times-1] + rotated
#   result.map(&:to_s).join.to_i
# end

def rotate_rightmost_digits(number, n)
  all_digits = number.to_s.chars
  all_digits[-n..-1] = rotate_array(all_digits[-n..-1])
  all_digits.join.to_i
end



p rotate_rightmost_digits(735291, 1) #== 735291
p rotate_rightmost_digits(735291, 2) #== 735219
p rotate_rightmost_digits(735291, 3) #== 735912
p rotate_rightmost_digits(735291, 4) #== 732915
p rotate_rightmost_digits(735291, 5) #== 752913
p rotate_rightmost_digits(735291, 6) #== 352917

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917