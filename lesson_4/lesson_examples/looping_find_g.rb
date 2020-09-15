=begin

Problem: Select all 'g' characters out of a string. Use a loop and if statement.

=end


alphabet = 'abcdefghijklmnopqrstuvwxyz'
selected_char = ''
counter = 0

loop do
  break if counter == alphabet.size

  current_char = alphabet[counter]
  
  if current_char == "g"
    selected_char << current_char
  end
  
  counter += 1
end  

p selected_char