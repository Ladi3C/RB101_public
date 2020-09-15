=begin

Problems: 

Given an array numbers which contains both odd and even integers; create two new arrays,
odd_numbers which contains the odd integers from the original array and even_numbers which 
contains the even integers.
1)  yes
2)  yes 
3)  yes
4)  no 
=end
numbers = [1, 2, 4, 5, 7, 8, 10, 13, 14]
odd_numbers, even_numbers = numbers.partition do |number|
                              number.even?
                            end
p odd_numbers
# p even_numbers