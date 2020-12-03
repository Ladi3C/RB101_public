def factors(number)
  divisor = number
  factors = []

  while divisor > 0

    factors << number / divisor if number % divisor == 0
    divisor -= 1
  end
  factors
end  

p factors(24)
p factors(0)

=begin
def factors(number)
  divisor = number
  factors = []

  loop do
    break if divisor == 0

    factors << number / divisor if number % divisor == 0
    divisor -= 1
  end
  factors
end  

p factors(24)
p factors(0)
=end