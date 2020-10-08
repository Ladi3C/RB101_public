=begin

Problem:

        Given the following data structure and without modifying the original array, 
        use the map method to return a new array identical in structure to the original 
        but where the value of each integer is incremented by 1.

DISSECT:  - array with 3 nested hashes
          - use the map method
          - return NEW array 
          - same structure
          - value of each integer is + 1
          - EXPLICIT RULE:  DO NOT MODIFY THE ORIGNAL ARRAY

Data Structure: 
          - Input : array
          - Output : NEW array

Algorithm: 
- use map to iterate through each hash,
- access the value to increment by 1

[   {a: 1}  ,     {b: 2, c: 3}    ,      {d: 4, e: 5, f: 6}       ]



=end
hsh = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]
incremented_hsh = {}

hsh.map do |sub_hsh|
  sub_hsh.each do |key, value|
    incremented_hsh[key] = value + 1
  end 
  incremented_hsh
end 

p hsh

p incremented_hsh