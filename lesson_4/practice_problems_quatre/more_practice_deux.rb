=begin

Problem: Add up all of the ages from the Munster family hash:

Input : Hash
Output: Integer

Algorithm:

create an empty variable
Iterate through the hash
add onto the empty variable at each iteration


=end

ages = { 
  "Herman" => 32, 
  "Lily" => 30, 
  "Grandpa" => 5843, 
  "Eddie" => 10, 
  "Marilyn" => 22, 
  "Spot" => 237 
}
# USING A LOOP
# sum = 0
# counter = 0
# ages_keys = ages.keys

# loop do
#   current_key = ages_keys[counter]
#   current_value = ages[current_key]
#   sum += current_value

#   counter += 1
#   break if counter == ages.size
# end 

# p sum

# USING AN ITERATOR
# sum = 0

# ages.each do |_, value|
#   sum += value
# end 

# p sum 

#USING METHOD

p ages.values.inject(:+)
