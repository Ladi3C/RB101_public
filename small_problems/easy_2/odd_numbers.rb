=begin

Problem: 
        Print all odd numbers from 1 to 99 inclusive. All numbers should be printed on separate lines. 
=end



1.upto(99) { |num| puts num if num.odd?}

# numbers = (1..99).to_a

# numbers.select do |num|
#   puts num if num % 2 == 1
# end 




# counter = 1
# loop do
#   puts counter
#   counter += 2
#   break if counter > 99
# end




# counter = 1

# while counter <= 99
#   puts counter
#   counter += 2
# end



# numbers = (1..99).to_a

# numbers.each do |num|
#   if num.odd?
#     puts num
#   end 
# end 


# p numbers