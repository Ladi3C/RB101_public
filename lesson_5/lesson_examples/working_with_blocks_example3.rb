[[1, 2], [3, 4]].map do |arr|
  puts arr.first
  arr.first
end

=begin

Here we are calling the Array#map method on a multidemonsional array. We are  passing each inner array
to local variable arr initialized on line 1. Arr is also a block parameter. On line two, we 
are calling the Array#first method on each subarray, which returns the first element, at index 0, of
the subarray. We are also calling the puts method on the return value of Array#first. This should output 
a string repressentation of the integers 1 and 3, respectively. The last line to be executed is 
line 3, which is the return value of Array#Each, which is 1 and 3. Map transforms and returns a new 
array => [1, 3]
=end