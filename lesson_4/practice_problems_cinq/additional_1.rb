=begin
Problem:
        Turn this array 
        into a hash 
        where the names are the keys 
        and the values are the positions in the array.
=end

# flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
# flintstones_hsh = {}
# counter = 0

# loop do
#   current_key = flintstones[counter]
#   flintstones_hsh[current_key] = counter

#   counter += 1
#   break if counter == flintstones.size
# end

# p flintstones_hsh

# flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
# flintstones_hsh = {}
# flintstones.each_with_index do |name, idx|
#   flintstones_hsh[name] = idx
# end

# p flintstones_hsh


flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
p (flintstones.each_with_object({}) do |name, hsh|
  hsh[name] = flintstones.index(name)
end)
#p flintstones.index('Fred')