# def factors(number)
#   divisor = number
#   factors = []
#   loop do 
#     factors << number / divisor if number % divisor == 0
#     divisor -= 1
#   break if divisor == 0
#   end 
#   factors
# end

# p factors(10)

def factors(number)
  divisor = number
  factors = []
  while divisor > 0 do
    factors << number / divisor if number % divisor == 0
    divisor -= 1
  end
  factors
end

p factors(10)