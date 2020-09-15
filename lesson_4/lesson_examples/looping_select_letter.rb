=begin

Problem: Create a method that takes a string and returns a new string containing only the letter 
          specified. 

Example: question = 'How many times does a particular character appear in this sentence?'
         select_letter(question, 'a') # => "aaaaaaaa"
         select_letter(question, 't') # => "ttttt"
         select_letter(question, 'z') # => ""

- define method select_leter
- takes two paramenters (string, letter)
- create empty string variable
- set counter
- break condition
- empty string variable << current value if matches letter
- increase counter
- empty string variable as last line executed
=end


def select_letter(string, letter)
  selected_letter = ""
  counter = 0

  loop do
    break if counter == string.size
    current_letter = string[counter]
    
    selected_letter << current_letter if current_letter == letter
    
    counter += 1
  end 

  selected_letter
end 







question = 'How many times does a particular character appear in this sentence?'
p select_letter(question, 'a') # => "aaaaaaaa"
p select_letter(question, 't') # => "ttttt"
p select_letter(question, 'z') # => ""