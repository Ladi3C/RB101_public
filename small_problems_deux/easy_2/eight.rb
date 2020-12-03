puts "Please enter an integer greater than 0:"
num = gets.chomp.to_i

# puts "That is not a valid entry. Please enter a number greater than 0" if num < 0 
# num = gets.chomp.to_i

puts "Enter 's' to compute the sum, 'p' to compute the product."
answer = gets.chomp
#product = 1

if answer == 's'
  sum = (1..num).inject(:+)
  puts "The sum of the integers between 1 and #{num} is #{sum}"
elsif answer == 'p'
  product = (1..num).inject(:*)
  puts "The product of the integers between 1 and #{num} is #{product}"
end

 