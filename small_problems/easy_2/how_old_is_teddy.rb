=begin

Build a program that randomly generates and prints Teddy's age. 
To get the age, you should generate a random number between 20 and 200.






=end

# teddys_age = nil
# counter = 0

# loop do
#   teddys_age = rand(20..200)
#   puts teddys_age
#   counter += 1
#   break if counter >= 5
# end

# teddys_age = rand(20..200)
# puts "Teddy's age is #{teddys_age}!"

puts "What is your name?"
name = gets.chomp

age = rand(20..100)

puts "Greetings #{name}! Your age is #{age}!"