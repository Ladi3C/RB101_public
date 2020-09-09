=begin

Problem:  Write a method that counts the number of occurrences of each element in a given array.

Input:    array
Output:   string

Test Case:  car => 4
            truck => 3
            SUV => 1
            motorcycle => 2




Edge Cases: money maker
            each new line consecutive elements in order without the duplicates
            and the count of them, how many of each there are 



=end
require 'pry'

def count_occurences(array)
  wheels = array.uniq
  counter = 0
  #p wheels
  
  loop do
    break if counter == wheels.size
    vehicle = wheels[counter]
    amount =  array.count(vehicle)
binding.pry
    puts "#{vehicle} => #{amount}"
    counter += 1
  end 
    
end 



vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle', 'car', 'truck']


count_occurences(vehicles)

