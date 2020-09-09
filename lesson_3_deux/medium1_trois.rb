def factors(number)
  divisor = number
  factors = []

  while divisor > 0 
    factors << number / divisor if number % divisor == 0
    divisor -= 1
  end 
  factors
end
p factors(20)





# loop do
#   break if divisor == 0 

#   if number % divisor == 0
#     factors << number / divisor
#   end 
#    divisor -= 1
#   end
# factors
# end 

# p factors(20)

# => 1, 2, 4, 5, 10, 20