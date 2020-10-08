statement = "The Flintstones Rock"
statement_arr = statement.delete(' ').split('').sort

p (statement_arr.each_with_object({}) do |char, hsh|
  hsh[char] = statement.count(char)
 end)


# flintstones_hsh = {}
# statement_arr = statement.delete(' ').split('').sort
# counter = 0

# loop do
#   break if counter == statement_arr.size

#   current_key = statement_arr[counter]
#   flintstones_hsh[current_key] = statement.count(current_key)

#   counter += 1
# end 

# p flintstones_hsh

# flintstones_hsh = {}
# letters = ('A'..'Z').to_a + ('a'..'z').to_a

# letters.each do |letter|
#   letter_frequency = statement.scan(letter).count
#   flintstones_hsh[letter] = letter_frequency if letter_frequency > 0
# end 

# p flintstones_hsh