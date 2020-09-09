def counter_occurrences(array)
  occurrences = Hash.new

  wheels = array.uniq
  # wheels => ["car", "truck", "SUV", "motorcycle"]

  wheels.each do |element|
    occurrences[element] = array.count(element)
  end

  occurrences.each do |element, count|
    puts "#{element} => #{count}"
  end
end


vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

hsh = counter_occurrences(vehicles)
puts
p hsh.to_a