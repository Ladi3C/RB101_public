=begin

Problem:   What is the return value of the select method below? Why?

[nil, nil, nil]

Because the criteria evaluates to false. False returns nil.


THIS IS WRONG!!!

Pay attention to the last line that is evaluated. select method ignores line 19, 
and the last line that is evaluated "hi" is truthy. Returning a new array with elements
of the original array!!!!

=end

answer = [1, 2, 3].select do |num|
  num > 5
  'hi'
end

p answer

