=begin

Problem : What is the return value of the select method below? Why?

Answer  : The last line that is evaluated is 'hi', 'hi' is considered to be truthy. When we 
          work with select, select returns all elements that are truthy. This method should
          return a new array with the elements in the original array.
          => [1, 2, 3]
          
=end

[1, 2, 3].select do |num|
  num > 5
  'hi'
end