=begin

Problem: 
    Given this data structure write some code to return an array which contains
    only the hashes where all the integers are even.

    - array with nested hashes
    - RETURN an ARRAY
    - contaings hashes where all integers are even
INPUT:  ARRAY
OUTPUT: ARRAY

Data Structure: nested hashes

arr = [
{a: [1, 2, 3]},
{b: [2, 4, 6], c: [3, 6], d: [4]},
{e: [8], f: [6, 10]}
]

Algorithm: 

access array arr
iterage through each hash
acces each key and value in the hash
if all the values are even select them SELECTION
perhaps use all?     
=end 

arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]

p (arr.select do |hsh|
  hsh.all? do |_, value|
    value.all? do |num|
      num.even?
    end
  end
end)  
