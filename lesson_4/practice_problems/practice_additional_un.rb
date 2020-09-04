=begin

PROBLEM:  
          Turn this array into a hash where the names are the keys and the values
          are the positions in the array.
INPUT:    array
OUTPUT:   output

Rules:    Turn the array into a hash
          Names are Keys
          Values are Indices of where they are in the array

=end

flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
flintstones_hsh = {}

flintstones.each_with_index do |name, index|
  flintstones_hsh[name] = index
end 

p flintstones_hsh

