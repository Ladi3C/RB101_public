=begin

Problem :  What is the return value of the following code? Why?

Answer  :  Map is for tranformatioon. 
           Will return an array.
           The output will be 2, 3 because 2 and 3 are greater than 1 BUT!
           they also return nil because the puts s method returns nil.
           so the return will be => [1, nil, nil]
=end

lola = [1, 2, 3].map do |num|
  if num > 1
    puts num
  else
    num
  end
end

p lola 