def select_letter(sentence, letter)
  selected_letter = ''
  counter = 0

  loop do
    selected_letter << sentence[counter] if sentence[counter] == letter
    counter += 1

    break if counter == sentence.size
  end
  selected_letter
end

# def select_letter(sentence, letter)
#   selected_letter = ''
  
#   sentence.chars.select do |char|
#     selected_letter << char if char == letter
#   end
# selected_letter
# end


question = 'How many times does a particular character appear in this sentence?'
p select_letter(question, 'a') # => "aaaaaaaa"
p select_letter(question, 't') # => "ttttt"
p select_letter(question, 'z') # => ""