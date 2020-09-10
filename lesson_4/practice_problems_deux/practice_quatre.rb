=begin

Problem : What is the return value of each_with_object in the following code? Why?

Answer  : {'a' => 'ant', 'b' => 'bear', 'c' => 'cat'}

Here the method arugment is a hash. The block has two arguments. The first is the current value, and 
second is what we want to do with it, which is a hash. Now we are assigning the key
  to [value] which is ['ant'] and we want to get the index 0 for it which is 'a'. 'a' becomes 
  our key and the value 'ant' is the value. We go on to iterate through the array assigning a key
  to the value from the elements in the array. 
=end

lola = ['ant', 'bear', 'cat'].each_with_object({}) do |value, hash|
  hash[value[0]] = value
end

p lola 