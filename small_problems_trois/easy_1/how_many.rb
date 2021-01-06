# def count_occurrences(wheels)
#   vehicles = wheels.uniq
#   count_arr = vehicles.map { |wheel| wheels.count(wheel)}
#   counter = 0
#   loop do
#     puts "#{vehicles[counter]} => #{count_arr[counter]}"
#     counter += 1

#     break if counter == vehicles.size 
#   end 
# end

def count_occurrences(wheels)
  wheels_occurences = {}

  wheels.uniq.each do |wheel|
    wheels_occurences[wheel] = wheels.count(wheel)
  end

  wheels_occurences.each do |k, v|
    puts "#{k} => #{v}"
  end
end

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

p count_occurrences(vehicles)