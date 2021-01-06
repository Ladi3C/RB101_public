=begin
Problem: Write a method 
         that takes an Array of numbers, 
         and returns an Array with 
         the same number of elements, 
         and each element has 
         the running total from the original Array.

         - return the SAME number of elements (#map)
         - [2, 5, 13]
         - [2, 7, 20]
         - 2 + 5 = 7
         - 2 + 5 + 13 = 20

Example:
        running_total([2, 5, 13]) == [2, 7, 20]
        running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
        running_total([3]) == [3]
        running_total([]) == []

Data Structure:
        Input : array
        Output: new array
Algorithm:
        - create method `running_total` with `array` as its parameter
        - 



=end
def running_total(array)
  result = 0
  array.map { |number| result += number}
end


p running_total([2, 5, 13]) #== [2, 7, 20]
#running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
#running_total([3]) == [3]
#running_total([]) == []