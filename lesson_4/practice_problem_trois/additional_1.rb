=begin

Turn this array into a hash where the names are the keys 
and the values are the positions in the array.

=end 

flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

# p (flintstones.each_with_object({}) do |name, hsh|
#     hsh[name] = flintstones.index(name)
# end) 
 
# flintstones_hsh = {}
# flintstones.each_with_index do |name, indx|
#   flintstones_hsh[name] = indx
# end 


flintstones_hsh = {}
counter = 0
until counter == flintstones.size
  current_key = flintstones[counter]
  flintstones_hsh[current_key] = counter
  counter += 1
end 


# loop do
#   break if counter == flintstones.size

#   current_key = flintstones[counter]
#   flintstones_hsh[current_key] = counter
#   counter += 1

# end 

p flintstones_hsh