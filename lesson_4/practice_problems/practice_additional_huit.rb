=begin

Problem:   What happens when we modify an array while we are iterating over it? What would be output by this code?]
           

Answer:    While on line 12 we are calling inspect with p on variable number, that means it will output the number,
           we are also DESTRUCTIVELY removing the first element in the array, returning an empty array
=end

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.shift(1)
end

1 

=begin

Problem:   What would be output by this code?

Answer:    I believe this will return [1, 2]

=end

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.pop(1)
end