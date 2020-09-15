number_of_pets = {
  'dogs' => 2,
  'cats' => 4,
  'fish' => 1
}

pets = number_of_pets.keys
counter = 0

loop do
  break if counter == number_of_pets.size

  current_key = pets[counter]
  current_value = number_of_pets[current_key]
  puts "I have #{current_value} #{current_key}!"
  counter += 1
end 

