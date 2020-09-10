=begin

Problem:  What is the return value of map in the following code? Why?

Answer :  First thing to note.. MAP is for TRANSFORMATION
          Here we are iterating through all the key value pairs (specifically the value)
          It is also important to remember that map returns an array on a hash. 
          => [nil, b: 'bear']
          Map will always return something, if the coniditon is false, it will return nil. 
=end 

lola = { a: 'ant', b: 'bear' }.map do |key, value|
  if value.size > 3
    value
  end
end

p lola