=begin

Array#reject returns a new array containing the times for which the given block is NOT true. 

Since there is a puts on line 12, it is nil,which is falsey returning [1, 2, 3]
Question: Does it return the orignal array OR a new array?
Answer: RETURNS A NEW ARRAY WHERE THE CONTENT ARE FALSEY 

=end

[1, 2, 3].reject do |num|
  puts num
end