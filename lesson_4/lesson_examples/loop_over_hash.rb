number_of_pets = {
  'dogs' => 2,
  'cats' => 4,
  'fish' => 1
}
pets = number_of_pets.keys
counter = 0

loop do
  break if counter == number_of_pets.size
  current_pet = pets[counter]
  current_pet_number = number_of_pets[current_pet]
  puts "I have #{current_pet_number} #{current_pet}"
  counter += 1
end 

=begin
To remedy this, we have to create an array containing all of the keys in the hash.
 We can do this by using Hash#keys, which returns an array containing all of the keys 
 in the hash. We can then use the new array of keys, pets, to iterate over the hash.

The important thing to realize here is that this is a two step process. First, we're 
iterating over the array of keys, pets, and saving each key into the current_pet variable.
 We then use the current_pet key to retrieve the appropriate value out of the number_of_pets hash.

The puts statement interpolates both the current hash value, current_pet_number, 
and the current hash key, current_pet, into the "I have ... !" string.
=end