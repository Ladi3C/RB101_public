=begin
Problem: 
        Build a program that displays when the user will retire 
        and how many years she has to work till retirement.
Example: 
        What is your age? 30
        At what age would you like to retire? 70

        It's 2016. You will retire in 2056.
        You have only 40 years of work to go!
=end

print "What is your age?"
age = gets.chomp.to_i

print "What what age would you like to retire?"
retire_age = gets.chomp.to_i
years_left = retire_age - age
year_retired = 2020 + years_left
puts "It's 2020. You will retire in #{year_retired}."
puts "You have only #{years_left} years of work to go!"