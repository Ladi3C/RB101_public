=begin

Problem: 
        Turn this array into a hash where the names are the 
        keys and the values are the positions in the array.
        keys: names
        values: index

Input:  Array
Output: Hash

Data: each_with_object
      Loop construct

Algorithm:

iterate through the array
create empty hash variable
counter

push current name with index (counter) into empty hash variable
add counter
exit loop


=end

flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

#flintstone_hsh = {}
# counter = 0

# loop do
#   current_key = flintstones[counter]
#   flintstone_hsh[current_key] = counter

#   counter += 1
#   break if counter == flintstones.size
# end

# p flintstone_hsh

flintstone_hsh = {}

# p (flintstones.each_with_object({}) do |name, hsh|
#   hsh[name] = flintstones.index(name)
# end) 

# p flintstone_hsh

flintstones.each_with_index do |name, inx|
  flintstone_hsh[name] = inx
end 

p flintstone_hsh