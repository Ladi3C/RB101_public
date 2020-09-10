=begin

Problem: What is the **block's**  return value in the following code? How is it determined? 
         Also, what is the return value of any? in this code and what does it output?

Answer : In this peiece of code, it is important to look at what the method is returning and what the
         block is returning. The block num.odd? returns a boolean. The method # any also returns a boolean.
         During iteration, the first value is 1, that gets outputted, and then the block checks to see if
         1 is odd?. This returns true. The method stops iterating, as it has reached a truthy value. Puts method
         is only invoked for the first item in the array. 
=end

[1, 2, 3].any? do |num|
  puts num
  num.odd?
end
