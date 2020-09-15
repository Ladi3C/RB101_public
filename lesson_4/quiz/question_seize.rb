pets = ['cat', 'parrot', 'dog', 'fish']
new_pet = pets.map do |pet|
  pet.size == 3
end

p new_pet