=begin

Problem: remove people with age 100 and greater.


=end
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

# USING METHOD
# ages.delete_if do |_, age|
#   age >= 100
# end 

# p ages

# USING LOOP
# counter = 0
# ages_keys = ages.keys

# loop do
#   current_key = ages_keys[counter]
#   current_value = ages[current_key]

#   if current_value >= 100
#     ages.delete(current_key)
#   end 

#   counter += 1
#   break if counter == ages.size
# end

# p ages

# USING an iterator 
# ages.select! do |k, v|
#   v < 100
# end 

# p ages
