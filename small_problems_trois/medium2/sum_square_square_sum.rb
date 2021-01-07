=begin
Problem:
        Write a method 
        that computes the difference 
        between the square of the sum of the first n positive integers 
        and the sum of the squares of the first n positive integers.
=end
def sum_square_difference(number)
  num_array = (1..number).to_a
  sum_square = (num_array.inject(:+))**2
  square_sum = num_array.map {|num| num ** 2}.reduce(:+)
  result = sum_square - square_sum
end

p sum_square_difference(3)
p sum_square_difference(10)
p sum_square_difference(1)
p sum_square_difference(100)