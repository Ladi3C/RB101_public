=begin
Problem: 
        Given the following data structure use a combination of methods, 
        including either the select or reject method, 
        to return a new array 
        identical in structure to the original 
        but containing only the integers 
        that are multiples of 3.

Algorithm:

this is an array with sub arrays
access the arr array map
access the sub array map
iterate through each element (select)
check to see if it is a mutiple of 3

=end

arr = [[2], [3, 5, 7], [9], [11, 13, 15]]

p (arr.map do |sub_arr|
  sub_arr.select do |num|
    num % 3 == 0
  end 
end) 