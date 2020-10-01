=begin

Problem: 

        Build a program that displays when the user will retire and how many years
        she has to work till retirement. 

Example: 

What is your age? 30
At what age would you like to retire? 70

It's 2016. You will retire in 2056.
You have only 40 years of work to go!

=end

print "What is your age? "
age = gets.chomp.to_i

print "At what age would you like to retire? "
retire = gets.chomp.to_i

years_difference = (retire - age)
retire_year = (2020 + years_difference)

puts "It's 2020. You will retire in #{retire_year}."
puts "You have only #{years_difference} years of work to go!"