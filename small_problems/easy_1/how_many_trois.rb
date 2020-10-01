=begin

Problem:  Write a method that counts the number of occurrences of each element in a given array.

Example:    car => 4
            truck => 3
            SUV => 1
            motorcycle => 2

["car", "truck", "SUV", "motorcycle"]

=end

def count_occurrences(arr)
arr_single = arr.uniq
counter = 0
  loop do
    
    wheel = arr_single[counter]
    frequency = arr.count(wheel)
    puts "#{wheel} => #{frequency}"

    counter += 1
    break if counter == arr_single.size
  end 
end 

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

count_occurrences(vehicles)