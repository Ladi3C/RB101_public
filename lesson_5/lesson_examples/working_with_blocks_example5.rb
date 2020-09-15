[[1, 2], [3, 4]].map do |arr|
  arr.map do |num|
    num * 2
  end
end

=begin

On line 1 we are calling the Array#map method on a multi-dimensional array.
The inner arrays are being passed in as an argument to block parameter arr.
Each inner array is then being called on by the Array#map method, again, and each object in
the inner array is being passed into the block parameter num.
On line 3, each element in the sub array is being multiplied by two.

There are 4 return values to pay attention to. The return value of both map methods and the
return value both blocks. 

On line 2, the block with local variable num, returns 2, 4, 6, 8. Map returns a new array
[2, 4] [6, 8]. Map does something with the return value of the block, it transforms the orignal array
and it will return a new multi-demensional array 

=> [[2, 4][6, 8]]


=end
