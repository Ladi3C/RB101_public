=begin

Problem: 
        return a new array of the same structure but with the sub arrays being 
        ordered (alphabetically or numerically as appropriate) in descending order.

DISSECT:  - RETURN a NEW array
          - same structure
          - subarrays must be in DESCENDING

input : NESTED array
outut : NESTED array

arr = [   ['b', 'c', 'a']   ,   [2, 1, 3]   ,   ['blue', 'black', 'green']   ]
            LETTERS              NUMBERS            WORDS


=end

arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]

p (arr.map do |sub_arr|
    sub_arr.sort do |a, b| 
      b <=> a
    end 
end)