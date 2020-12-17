=begin
Problem:
        Write a method 
        that can rotate the last n digits of a number.

        Note that rotating just 1 digit results in the original number being returned.

        You may use the rotate_array method from the previous exercise if you want. (Recommended!)

        You may assume that n is always a positive integer.


Example:
        rotate_rightmost_digits(735291, 1) == 735291  # original number is returned
        rotate_rightmost_digits(735291, 2) == 735219  # last two are switched
        rotate_rightmost_digits(735291, 3) == 735912  # 912
        rotate_rightmost_digits(735291, 4) == 732915  #
        rotate_rightmost_digits(735291, 5) == 752913
        rotate_rightmost_digits(735291, 6) == 352917
Data Structure:
        Input : 2 integers
        Output: integer rotated using criteria
Algorithm:
          - create a method that accepts digits and n as parameter
          - return digits if n == 1
          - turn the digits to strings and convert them into an array
          - 

=end


def rotate_array(arr)
  arr[1..-1] + [arr[0]]
end

# def rotate_rightmost_digits(digits, n)
#   str_digits = digits.to_s.chars
#   return (rotate_array(str_digits)).join.to_i if str_digits.size == n
  
#   ending_num = (str_digits.size - 1) - n
#   leftmost_arr, work_arr = str_digits[0..ending_num], str_digits[-n..-1]
#   result = (leftmost_arr + rotate_array(work_arr)).join.to_i
# end

def rotate_rightmost_digits(digits, n)
  all_digits = digits.to_s.chars
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