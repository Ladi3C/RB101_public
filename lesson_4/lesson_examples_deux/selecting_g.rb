alphabet = 'abcdefghijklmnopqrstuvwxyz'
selected_chars = ""
# counter = 0

# loop do
#   current_char = alphabet[counter]

#   selected_chars << current_char if current_char == 'g'
#   counter += 1

#   break if counter == alphabet.size
# end


# p selected_chars

alphabet.chars.select do |char|
  selected_chars << char if char == 'g'
end 

p selected_chars