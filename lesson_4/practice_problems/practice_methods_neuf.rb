=begin
Problem:  What is the return value of map in the following code? Why?

Answer:   We already know right away .map is for TRANSFORMATION!
          [nil, 'bear']

Input:    hash
Output:   array? 
=end 



{ a: 'ant', b: 'bear' }.map do |key, value|
  if value.size > 3
    value
  end
end