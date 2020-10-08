=begin

Problem:
          Given the following data structure, return a new array containing 
          the same sub-arrays as the original but ordered logically by only 
          taking into consideration the odd numbers they contain.

DISSECT:  
          - Data Structure : nested array
          - RETURN a NEW array
          - same SUB-ARRAYS!
          - ORDERED by ODD numbers they contain

Example: 
    [   [1, 6, 7]   ,   [1, 4, 9]   ,    [1, 8, 3]    ]
    [   [1, 8, 3]   ,   [1, 6, 7]   ,    [1, 4, 9]    ]

Algorithm: - iterate through each sub-array 
           - sort them by odd numbers
           - using either 1) odd?
                          2) num % 2 == 1


=end

arr = [[1, 6, 7], [1, 4, 9], [1, 8, 3]]

p (arr.sort_by do |sub_arr|
    sub_arr.select do |num|
      num % 2 == 1
    end 
  end)
