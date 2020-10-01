=begin

Problem:

      Write a method that takes an Array of numbers, and returns an Array
      with the same number of elements, and each element has the running 
      total from the original Array.
Input: Array
Output: array with same number of elements

Algorithm:
- define method running_total
- initialize array as parameter
- returns an array with same number of elements (each or map maybe?.. or maybe a loop)
- each element has a running total from original 

set running arr as an empty array
set a counter
create a loop
break condition
push index 0 into running arr


=end

def running_total(num_arr)
  sum = 0
  num_arr.map { |num| sum += num}
end 

p running_total([2, 5, 13]) #== [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) #== [14, 25, 32, 47, 67]
p running_total([3]) #== [3]
p running_total([]) #== []