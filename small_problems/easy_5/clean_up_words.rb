=begin

Problem: 
          Given a string that consists of some words (all lowercased) 
          and an assortment of non-alphabetic characters, 
          write a method 
          returns that string 
          with all of the non-alphabetic characters replaced by spaces. 
          If one or more non-alphabetic characters occur in a 
          row, you should only have one space in the result (the result 
          should never have consecutive spaces).
=end
ALPHA = ('a'..'z').to_a

def cleanup(sentence)
  clean_chars = []

  sentence.chars.map do |char|
    if ALPHA.include?(char)
      clean_chars << char
    else
      clean_chars << ' ' unless clean_chars.last == ' '
    end 
  end 

  clean_chars.join
end




p cleanup("---what's my +*& line?") == ' what s my line '