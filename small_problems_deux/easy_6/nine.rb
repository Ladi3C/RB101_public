=begin
Problem:
      Write a method named include? 
      that takes an Array 
      and a search value as arguments. 

      This method should return true 
      if the search value is in the array, 
      false if it is not. 

      You may not use the Array#include? method in your solution.
Example:
      include?([1,2,3,4,5], 3) == true
      include?([1,2,3,4,5], 6) == false
      include?([], 3) == false
      include?([nil], nil) == true
      include?([], nil) == false
Data Structure:
      Input: Array, Integer
      Output: Boolean 
Algorithm:
      - create method definition include? with two parameters: array, integer
      - create a loop
      - check to see if at each index there element is equal to the INTEGER parameter
      - with a conditional statement
=end

def include?(arr, arg)
  arr.any? do |num|
    num == arg
  end
end

p include?([1,2,3,4,5], 3) == true
p include?([1,2,3,4,5], 6) == false
p include?([], 3) == false
p include?([nil], nil) == true
p include?([], nil) == false