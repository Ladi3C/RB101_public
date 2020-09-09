=begin

Problem: Return vowels that are in a given string using a loop

=end 

def select_vowels(str)
  selected_vowels = ''
  counter = 0

  loop do

    current_value = str[counter]
    if "aeiouAEIOU".include?(current_value) 
      selected_vowels << current_value
    end 

    counter += 1
    break if counter == str.size
  end 
selected_vowels
end


p select_vowels('apples') # => 'ae'