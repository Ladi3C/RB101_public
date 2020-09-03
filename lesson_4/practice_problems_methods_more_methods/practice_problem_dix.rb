=begin

Problem:  What is the return value of the following code? Why?
Input:    array
Output:   array

Answer:   [nil, nil, nil]
correct:  [1, nil, nil]

=end 

[1, 2, 3].map do |num|
  if num > 1
    puts num
  else
    num
  end
end