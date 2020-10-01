=begin


Problem:

      Write a method that returns an Array that contains every other element of 
      an Array that is passed in as an argument. The values in the returned list 
      should be those values that are in the 1st, 3rd, 5th, and so on elements of 
      the argument Array.

Example: 
      
      oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
      oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
      oddities(['abc', 'def']) == ['abc']
      oddities([123]) == [123]
      oddities([]) == []

Rules:  Write a method
        RETURNS an ARRAY
        containing every other element of an array that is pass in as an argument

Algorithm:
def odditites
takes an argument as an array
work with indices
counter
create loop
break
end
=end

def oddities(ordered_arr)
odd_indices = []
counter = 0
 
 loop do
  
  break if counter == ordered_arr.size
  odd_indices << ordered_arr[counter] if counter.even?
  counter += 1
  end

odd_indices
end 

p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
p oddities(['abc', 'def']) == ['abc']
p oddities([123]) == [123]
p oddities([]) == []