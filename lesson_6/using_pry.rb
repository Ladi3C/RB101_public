=begin

Problem: Write a method that given an array of integers, returns a new array containing only 
         odd numbers that are less than or equal to 15 or multiples of 3.  

Input:  array of integers
Output: array of odd numbers taht are less than or equal to 15 OR multiples of 3
=end

require 'pry'

def select_nums(arr)
  new_arr = []

  arr.each do |num|
    binding.pry
    new_arr << num if num.odd? && num <= 15 || num % 3 == 0
  end
  new_arr
end 

p select_nums([1, 2, 5, 6, 9, 12, 15, 17, 19, 21])