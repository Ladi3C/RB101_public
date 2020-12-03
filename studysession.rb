=begin

Problem: 

given an array of integers and an array of ranges
represent an index range of arr
calculate the sum of each range 

Input: two parameters - one array, nested array
putput: one integer (max sum)
Algo
- iterate through the ranges array generating an array for each range
- iterate through the subarrays that were generated 
- use the elements within the subarray to extract elements from arr atg those indices
# ranges.map { |subarray| arr[subarray[0]..subarray[-1]].sum}.max

=end

def max_sum(arr, ranges)
  sum = 0
  ranges.each do |subarr|
    start_index = subarr[0]
    end_index = subarr[1]
    sum = arr[start_index..end_index].reduce(&:+)
  end
  sum  
end 


p max_sum([1, -2, 3, 4, -5, -4, 3, 2, 1], [[1, 3], [0, 4], [6,8]])