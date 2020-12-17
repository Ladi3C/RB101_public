=begin
Problem:
        Write a method 
        that takes an Array of numbers 
        and then returns the sum of the sums 
        of each leading subsequence for that Array. 
        You may assume that the Array always contains at least one number.
Example:
      sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
      sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
      sum_of_sums([4]) == 4
      sum_of_sums([1, 2, 3, 4, 5]) == 35
Data Structure:
        Input : Array
        Output: integer
Algorithm:
      - create a nested array where each number is in an array [
        [3], [3, 5], [3, 5, 2]]
=end

def sum_of_sums(array)
  nested_array = [array[0]]
  counter = 0
  loop do
    break if counter == array.size - 1
    nested_array << [nested_array.last, array[counter +1]]
    
    counter += 1
  end
 nested_array.flatten.inject(:+)
end



p sum_of_sums([3, 5, 2]) #== (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
p sum_of_sums([1, 5, 7, 3]) #== (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
p sum_of_sums([4]) #== 4
p sum_of_sums([1, 2, 3, 4, 5]) #== 35

