
[1, 2, 3].reject do |num|
  puts num
end


=begin

Array#reject Returns a new Array whose elements are all those from self 
             for which the block returns false or nil

this code will return a new array containing all the elements from the original array
BECAUSE on line 3 the puts method is being called on each num. Puts returns nil for each
number, and according to Array#reject ruby documentation, reject returns a new array for elements
that return fals or nil. 
=end