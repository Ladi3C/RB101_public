[[1, 2], [3, 4]].map do |arr| 
  puts arr.first
end 

=begin

We are calling Array#map on a multidemonsional array. Each sub array is passed in to 
local variable arr initialized as a parameter on line 1. On line two, we are calling
the Array#first method on each sub array. The first method returns the first element
in an array, we can also say it returns the element in index 0. We are also outputting
a string representation of the integers 1 and 3, respectively. Its important to understand
what the block is returning and what the method call used is returning. In this problem,
the block returns nil. Map is for transformation, returning the same amount of elements from 
the original caller. The output is 1 and 3 on new lines, the return value is a NEW ARRAY
 => [nil, nil]
=end