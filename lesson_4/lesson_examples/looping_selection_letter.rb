=begin

Problem: In the example below, we want to select all 'g' characters out of a string. 
         You'll notice that this is just a basic loop with one main addition: the if statement.

- set the alphabet variable for comparison
- set empty variable to push string that matches criteria 
- set counter
- create loop
- current value
- if statement
- counter
-break statement
=end

alphabet = 'abcdefghijklmnopqrstuvwxyz'
selected_chars = ''
counter = 0

loop do
  current_character = alphabet[counter]

  if current_character == 'g'
    selected_chars << current_character
  end 

  counter +=1
  break if counter == alphabet.size
end 

p selected_chars # => "g"