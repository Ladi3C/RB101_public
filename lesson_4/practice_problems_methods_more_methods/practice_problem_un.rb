=begin 

What is the return value of the select method below? Why?

Select performs based on 'truthiness', the last line evaluated is hi, and since hi is truthy, 
a new array will be returned containing all of the elements in the original array.
=end

[1, 2, 3].select do |num|
  num > 5
  'hi'
end