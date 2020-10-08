p ([1, 2, 3].any? do |num|
  puts num
  num.odd?
end)

=begin
What is the block's return value in the following code? 
How is it determined? Also, what is the return value of any?
 in this code and what does it output?

 Array#any is being called onto a three element array. #any returns true if any element
 meets the given criteria (it returns a boolean). We can infer that #any only cares
 about the truthiness of the blocks criteria. 

On first iteration, line 2 outputs 1 because of the puts method. On line 3, it
checks to see if 1 is odd. It is. As soon as a truthy value is reached, the block returns 
true, matching array#any criterion. The output is 1 the return value is true. 
=end