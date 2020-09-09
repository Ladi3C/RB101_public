=begin

Problem : What would you expect the code below to print out?

Answer:   1
          2
          2
          3
          Outputs that but returns nil because of the put s method 
          If we out but line 15, it will output [1, 2, 3] but we arent mutating it with a bang suffix. 

=end

numbers = [1, 2, 2, 3]
numbers.uniq

puts numbers