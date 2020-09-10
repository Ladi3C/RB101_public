=begin

Problem: Create a method that capitalizes each word in a string like a Title. 

Example: 

          input: words = "the flintstones rock" ====> STRING
          output: words = "THe Flintstones Rock"====> STRING

Rules:    Must capitalize each beginning letter in a word
          DESTRUCTIVELY
Algorithm: 
          define a method with one parameter that holds a string or variable for a string
          set a counter
          creat a loop
          loop through each word in the sentence and capitalize!
          break condition
          counter += 1
          variable as the last word that is executed

=end

words = "the flintstones rock"
# words.split.map { |word| word.capitalize }.join(' ')

def titleize(str)
str= str.split
counter = 0

loop do
  str[counter].capitalize!
  counter += 1
  break if counter == str.size
end 
str.join(" ")
end 

words = "the flintstones rock"

p titleize(words)
