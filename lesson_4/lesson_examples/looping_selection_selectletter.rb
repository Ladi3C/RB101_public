=begin
Problem:  Let's write a method called select_letter, 
          that takes a string and returns a new string 
          containing only the letter that we specified.

Example:  question = 'How many times does a particular character appear in this sentence?'
          select_letter(question, 'a') # => "aaaaaaaa"
          select_letter(question, 't') # => "ttttt"
          select_letter(question, 'z') # => ""
Input:    variable that holds a string
          string (letter)
Output:   a string that countains the amount of times that letter is present

Algorithm:

- define a method (select_letter)
- takes two parameters (string, letter )
- set selected letters variable to EMPTY STRING
- set counter
- create loop
- if statement : if the current value is equal to letter
  push it to selected letters variable
- increase counter
- break if counter == string.size
- set selected letters variable as the last line executed in the method

=end

def select_letter(string, letter)
  selected_letters = ""
  counter = 0

  loop do
    current_letter = string[counter]

    selected_letters << current_letter if current_letter == letter 
    counter += 1

    break if counter == string.size
    end 
  
  selected_letters
end  


question = 'How many times does a particular character appear in this sentence?'
p select_letter(question, 'a').size # => "aaaaaaaa"
p select_letter(question, 't') # => "ttttt"
p select_letter(question, 'z') # => ""