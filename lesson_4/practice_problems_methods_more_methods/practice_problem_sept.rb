=begin
Problem:  What is the block's return value in the following code? 
          How is it determined? 
          Also, what is the return value of any? 
          in this code and what does it output?

Answer:   We know that any returns a boolean since it evaluates the truthiness of the blocks return 
          value in order to determine what the methods return value will be. 
          returns true.

Addition: Outputs 1 and returns true. It stops iterating after 1 because 1 is true so it would only 
          iterate until proven truthy. 


=end 


[1, 2, 3].any? do |num|
  puts num
  num.odd?
end