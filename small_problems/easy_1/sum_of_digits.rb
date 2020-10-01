=begin

Problem: 
          Write a method that takes one argument, a positive integer, 
          and returns the sum of its digits.

Example: 
          puts sum(23) == 5
          puts sum(496) == 19
          puts sum(123_456_789) == 45 

RULES : DO NOT USE while, until, loop, or each. (No basic looping constructs)

Algorithm:
- Define method sum
- Integer variable as parameter
- assign integer to num_arr = integer.digits
- call reduce on num_arr and add them up
=end


# def sum(integer)
#   s_arr = integer.to_s.chars
#   sum = 0

#   arr = s_arr.map do |str|
#           str.to_i
#         end

#   arr.each do |num|
#   sum += num
#   end
#   sum 
# end




def sum(integer)
    integer.digits.reduce(:+)
end 


puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45