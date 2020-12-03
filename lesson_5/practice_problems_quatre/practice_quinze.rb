=begin
Problem:
          Given this data structure write some code to 
          return an array which 
          contains only the hashes 
          where all the integers are EVEN.

Data Structure:
          Input: nested array with hashes
          Output: array with hashes integers are all even?

          map
          all?

Algorithm:

Access the array arr and iterate through each hash
access the values of the hash
if all values are even 


=end

arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]

p(arr.select do |hsh|
  hsh.all? do |_, v|
    v.all? do |num|
      num % 2 == 0
    end 
  end 
end) 