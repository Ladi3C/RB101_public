VOWELS = 'aeiouAEIOU'

# def select_vowels(str)
#   selected_chars = ""
#   counter = 0

#   loop do
#     current_char = str[counter]
    
#     if VOWELS.include?(current_char)
#       selected_chars << current_char
#     end

#     counter += 1
#     break if counter == str.size
#   end
  
#   selected_chars
# end

# p select_vowels('the quick brown fox')

def select_vowels(str)
  selected_chars = ""

  str.chars.select do |char|
    if VOWELS.include?(char)
      selected_chars << char
    end 
  end
  selected_chars
end 

p select_vowels("the quick brown fox")