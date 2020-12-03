=begin
Problem: 
          Write a program that solicits 6 numbers from the user, 
           then prints a message that describes whether or not 
           the 6th number appears amongst the first 5 numbers.
Example:

==> Enter the 1st number:
25
==> Enter the 2nd number:
15
==> Enter the 3rd number:
20
==> Enter the 4th number:
17
==> Enter the 5th number:
23
==> Enter the last number:
17
The number 17 appears in [25, 15, 20, 17, 23].
=end

puts "==> Enter the 1st number:"
first_num = gets.chomp.to_i

puts "==> Enter the 2nd number:"
second_num = gets.chomp.to_i

puts "==> Enter the 3rd number:"
third_num = gets.chomp.to_i

puts "==> Enter the 4th number:"
fourth_num = gets.chomp.to_i

puts "==> Enter the 5th number:"
fifth_num = gets.chomp.to_i

puts "==> Enter the last number:"
last_num = gets.chomp.to_i

arr = [first_num, second_num, third_num, fourth_num, fifth_num]

if arr.include?(last_num)
  puts "The number #{last_num} appears in #{arr}"
else 
  puts "The number #{last_num} does not appear in #{arr}"
end 




