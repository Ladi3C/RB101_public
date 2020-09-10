=begin

Problem: What happens when we modify an array while we are iterating over it? 
         What would be output by this code?

        Its important to remember that the each method will always return the original array.
        Lets take this step by step. We want to iterate through the numbers variable that holds
        an array object with 4 elements, integers, 1..4. 
        - lets start with 1 we call inspect on 1 which outputs and returns 1
        - then we take the numbers array, [1] and we destructively remove 1
        this may output 1, 2, 3, 4
        and return either the orignal array or return an empty one. or =>[2, 3, 4, 5] and return the orignal.
=end

numbers = [1, 2, 3, 4]
lola = numbers.each do |number|
  p number
  numbers.shift(1)
end

1 
3 

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.pop(1)
end

1 
2  