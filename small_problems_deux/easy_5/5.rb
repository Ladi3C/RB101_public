
=begin
Problem:
        Given a string that consists of some words (all lowercased)
        and an assortment of non-alphabetic characters, 
        write a method that returns that string 
        with all of the non-alphabetic characters replaced by spaces.

        If one or more non-alphabetic characters occur in a row, 
        you should only have one space in the result 
        (the result should never have consecutive spaces).
Example:
        cleanup("---what's my +*& line?") == ' what s my line '
Data Structure:
        Input:  string
        Output: string
Algorithm:
        - separate each character in an array
        - remove duplicate or more than 1 non-alpha numberic character first
        - create a method to do that
        - that takes one string parameter
        - convert the string into an array for iteration
        - if the element is not in the constant than uniq
        - 
        - if the 


        - then replace non alphanumeric characters with a space
Code:
=end

ALPHA = ('a'..'z').to_a


def remove_duplicate_nonalphanumeric(string)
  string_arr = string.chars.uniq if string.chars.map { |char| !(ALPHA.include?(char))}  
  string_arr
end

remove_duplicate_nonalphanumeric("---what's my +*& line?")

def remove_multiple_nonaphanumeric(string)
  string_arr = remove_duplicate_nonalphanumeric(string)
  counter = 0
  result = []
  loop do
    if ALPHA.include?(string_arr[counter])
      result << string_arr[counter]
    elsif !(ALPHA.include?(string_arr[counter]))
      result << string_arr[counter] unless !(ALPHA.include?(string_arr[counter])) && !(ALPHA.include?(string_arr[counter + 1]))
    end
    counter += 1 
    break if counter == string_arr.size
  end
  result << string_arr[-1]  if !(ALPHA.include?(string_arr[-1]))
  result
end 

 remove_multiple_nonaphanumeric("---what's my +*& line?")

def cleanup(string)
  p string_arr = remove_multiple_nonaphanumeric(string)
  counter = 0
    loop do
      string_arr[counter] = ' ' if !(ALPHA.include?(string_arr[counter]))

      counter += 1
      break if counter == string_arr.size
    end
  p string_arr.join
end 

p cleanup("---what's my +*& line?") == ' what s my line '
