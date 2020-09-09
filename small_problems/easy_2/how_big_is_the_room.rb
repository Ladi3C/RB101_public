=begin

Problem: Build a program that asks a user for the length and width of a room in 
         meters and then displays the area of the room in both square meters and square feet.

Data/Algorithm:

ask the user for the length and width of a room in meters
output the area of the room in 1. square meters 2. square feet


=end

puts "Enter the length of the room in meters:"
length = gets.chomp.to_f

puts "Enter the width of the room in meters:"
width = gets.chomp.to_f

area = length * width
square_feet = area * 10.7639
square_feet = square_feet.round(2)

puts "The area of the room is #{area} square meters (#{square_feet} square feet)."