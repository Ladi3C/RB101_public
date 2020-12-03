=begin
Problem:
        Write a method that counts the number of occurrences of each element in a given array.
        The words in the array are case-sensitive: 
        'suv' != 'SUV'. ` 
        Once counted, print each element alongside the number of occurrences.

Example:
        car => 4
        truck => 3
        SUV => 1
        motorcycle => 2

Data Structure: Input:  array
                Output: string
                #uniq
                Array

Algorithm:

Create a variable that contains only the vehicle type once (#uniq) (array)
Iterate through that array and count how many of those are in the vehicle variable
Output it to the screen

=end

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

# using a LOOP 

# def count_occurrences(wheels)
#   wheel_type = wheels.uniq
#   counter = 0
#   loop do
#     current_wheel = wheel_type[counter]
#     num = wheels.count(current_wheel)
#     puts "#{current_wheel} => #{num}"

#     counter += 1
#     break if counter == wheel_type.size
#   end
# end

# Using an iterator

def count_occurrences(wheels)
  wheels_type = wheels.uniq
  wheels_type.each do |wheel|
    puts "#{wheel} => #{wheels.count(wheel)}"
  end 
end

count_occurrences(vehicles)



