# The order of precedence will try to look at the parenthesis first. BUT WORSE
#Its trying to add strings to integers

# puts "the value of 40 + 2 is " + (40 + 2)

result = 40 + 2

puts "The Value of 40 + 2 is #{40+2}"
puts "The value of 40 + 2 is #{result}"
puts "The value of 40 + 2 is " + (40+2).to_s

