=begin

Problem: Select all the vowels in the given string. 

Examples: select_vowels('the quick brown fox')      # => "euioo"

          sentence = 'I wandered lonely as a cloud'
          select_vowels(sentence)                   # => "Iaeeoeaaou"
Algorithm: 

- define a method called select vowels
- takes one parameter, a string or variable that has a string stored in it
- set a standard for vowels with an if statement
- set a variable for all of the vowels to be stored in
- set a counter
- create a loop
- set current value
- if statement
- counter
- break condition
- let the empty variable be the last thing executed in the method
=end 

def select_vowels(str)
  selected_char = ""
  counter = 0

  loop do
    current_char = str[counter]

    if "aeiouAEIOU".include?(current_char)
      selected_char << current_char
    end 

    counter += 1
    break if counter == str.size
  end 
  selected_char
end 



p select_vowels('the quick brown fox')      # => "euioo"

sentence = 'I wandered lonely as a cloud'
p select_vowels(sentence)                   # => "Iaeeoeaaou"