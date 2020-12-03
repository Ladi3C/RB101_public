=begin
Problem: 
        Write a method 
        that takes an Array of numbers, 
        and returns an Array with the same number of elements, 
        and each element has the running total from the original Array.
Example:
        running_total([2, 5, 13]) == [2, 7, 20]
        running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
        running_total([3]) == [3]
        running_total([]) == []
Data Structure:
        Input:  array
        Output: array 
        Rules: - Return an array with the same number of elements

Algorithm:
        - use map to iterate through the array and push 
Code:
=end
def running_total(arr)
  sum = 0
  arr.map do |value|
    sum += value
  end 
end

p running_total([2, 5, 13]) #== [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) #== [14, 25, 32, 47, 67]
p running_total([3]) #== [3]
p running_total([]) #== []
