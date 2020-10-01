=begin

Problem: 
        
        Write a program that solicits 6 numbers from the user, 
        then prints a message that describes whether or not the 6th 
        number appears amongst the first 5 numbers.



=end

num_arr = []

puts "==> Enter the 1st number: "
first_num = gets.chomp.to_i
num_arr << first_num

puts "==> Enter the 2nd number: "
second_num = gets.chomp.to_i
num_arr << second_num

puts "==> Enter the 3rd number: "
third_num = gets.chomp.to_i
num_arr << third_num

puts "==> Enter the 4th number: "
fourth_num = gets.chomp.to_i
num_arr << fourth_num

puts "==> Enter the 5th number: "
fifth_num = gets.chomp.to_i
num_arr << fifth_num

puts "==> Enter the last number: "
last_num = gets.chomp.to_i

if num_arr.include?(last_num)
  puts "==> The number #{last_num} appears in #{num_arr}."
else   
  puts "==> The number #{last_num} does not appear in #{num_arr}."
end 

