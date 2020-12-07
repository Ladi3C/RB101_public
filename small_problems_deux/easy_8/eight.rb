=begin
Problem:
        Write a method 
        that takes a string, 

        and returns a new string 
        in which 

        every consonant character is doubled. 

        Vowels (a,e,i,o,u), digits, punctuation, and whitespace should not be doubled.
=end



alpha = ('A'..'Z').to_a + ('a'..'z').to_a
CONSONANTS = alpha.reject { |char| 'aeiou'.include?(char)}

def double_consonants(string)
  new_string = ''
  string.chars.each do |char|
    if CONSONANTS.include?(char)
      new_string << char * 2
    else
      new_string << char
    end
  end 
  new_string
end

p double_consonants('String') #== "SSttrrinngg"
p double_consonants("Hello-World!") #== "HHellllo-WWorrlldd!"
p double_consonants("July 4th") #== "JJullyy 4tthh"
p double_consonants('') #== ""


p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""