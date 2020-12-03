=begin

Problem:  

Create a hash that expresses the frequency with which each letter occurs in this string:

Example: 

{ "F"=>1, "R"=>1, "T"=>1, "c"=>1, "e"=>2, ... }

Input: string
Output: hash

Algorithm:
create empty hash variable 
delete whitespace
turn into array
sort the string



=end

statement = "The Flintstones Rock"
# keys = statement.delete(' ').chars.sort.uniq
frequency_hsh = {}
# counter = 0

# loop do
#   current_key = keys[counter]
#   current_value = statement.count(current_key)
#   frequency_hsh[current_key] = [current_value]

#   counter += 1
#   break if counter == keys.size
# end 

# p frequency_hsh

p(statement.delete(' ').chars.sort.uniq.each_with_object({}) do |char, hsh|
  hsh[char] = statement.count(char)
end)


