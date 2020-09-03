def factors(number)
  divisor = number
  factors = []

  while divisor > 0 do
    factors << number / divisor if number % divisor == 0
    divisor -= 1
  end
  factors
end 

p factors(20)


# def factors(number)
#   divisor = number
#   factors = []

#   loop do
#     if number % divisor == 0
#       factors << number / divisor 
#       end 

#       divisor -= 1
#     break if divisor == 0  
#   end
#   factors
# end  

# puts factors(20)

# Bonus 1 : The purpose of number % divisor == 0 , is we want to check the number stays a whole number
#when divided. When we use modulus, we ar echecking for a remainder 

# Bonus 2: The purpose of line 13, factors, is that ruby always returns the last line that is evaluated. 
# we want to make seure the array of factors of the number given is what is returned. 