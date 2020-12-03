=begin
Problem:
        Build a program that asks a user for the length and width of a room 
        in meters and then displays the area of the room in both square meters
        and square feet.
        Note: 1 square meter == 10.7639 square feet

Example:
        Enter the length of the room in meters:
        10
        Enter the width of the room in meters:
        7
        The area of the room is 70.0 square meters (753.47 square feet).
=end

puts "Please enter the length of the room in meters:"
length = gets.chomp.to_f
puts "Please enter the width of the room in meters:"
width = gets.chomp.to_f
area = length * width
sq_ft = 10.7639 * area
puts "The area of the room is #{area} square meters (#{sq_ft.round(2)} square feet)."