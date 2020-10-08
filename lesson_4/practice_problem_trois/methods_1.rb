[1, 2, 3].select do |num|
  num > 5
  'hi'
end

=begin

What is the return value of the select method above? Why?

the return value is => 1, 2, 3
Select only cares about truthiness. The last line that is evaluated is line 3,
'hi' is a truthy value so the return value of the block is truthy. 
It will return a NEW ARRAY containing all of the elements from the original array. 


=end