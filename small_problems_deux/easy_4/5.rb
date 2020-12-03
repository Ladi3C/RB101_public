=begin
Problem:
        Write a method that searches for all multiples of 3 or 5 
        that lie between 1 and some other number, 
        and then computes the sum of those multiples. 

        For instance, if the supplied number is 20, 
        the result should be 98 (3 + 5 + 6 + 9 + 10 + 12 + 15 + 18 + 20).

        You may assume that the number passed in is an integer greater than 1.
Example: 
        multisum(3) == 3
        multisum(5) == 8
        multisum(10) == 33
        multisum(1000) == 234168
Data Structure:
        Input: Integer
        Output: Integer
Algorithm:
        - create a method with one parameter
        - create an empty variable that holds an empty array
        - push the numbers that are divisible by 3 and 5 into the empty array
        - and sum all the numbers in the array and return them
Code:
=end

# def multisum(num)
#   multiple_num = []
#   num_arr = (1..num).to_a
#   num_arr.each do |n|
#     multiple_num << n if n % 3 == 0 || n % 5 == 0
#   end
#   multiple_num.inject(:+)
# end

def multiple?(dividend, divisor)
  dividend % divisor == 0
end

def multisum(max_number)
  multiples = []
  1.upto(max_number) do |num|
    multiples << num if multiple?(num, 3) || multiple?(num, 5)
  end 
  multiples.inject(:+)
end

p multisum(3) #== 3
p multisum(5)# == 8
p multisum(10) #== 33
p multisum(1000) #== 234168
