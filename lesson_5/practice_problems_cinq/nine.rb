=begin
Problem:
        Given this data structure, 
        return a new array of the same structure 
        but with the sub arrays being ordered 
        (alphabetically or numerically as appropriate) 
        in descending order.
Data Structure:
        Input : nested array
        Output: nested array
Algorithm:
        - iterate through `arr` to access each sub array using map
        - sort each sub array

=end

arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]

p (arr.map do |sub_arr|
  sub_arr.sort do |a, b|
    b <=> a
  end
end) 