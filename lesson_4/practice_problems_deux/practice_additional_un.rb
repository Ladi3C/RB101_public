=begin

Problem:  Given the array below
          Turn this array into a hash where the names are the keys 
          and the values are the positions in the array.

Input : array
Output: hash

algorithm:

create an empty hash variable
set a counter
create a loop
set current value
set index value
assign key value pair to empty hash variable
break if counter is equal to array size
counter += 1 for iteration 


=end
flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
flintstones_hash = {}
counter = 0

loop do 
  break if counter == flintstones.size

  current_key = flintstones[counter]
  current_value = counter 
  flintstones_hash[current_key] = current_value

  counter += 1
end

p flintstones_hash




