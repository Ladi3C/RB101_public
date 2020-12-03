numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.shift(1)
end
=begin
1
3

=end

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.pop(1)
end

=begin
1
2
=end 