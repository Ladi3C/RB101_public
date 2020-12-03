# def titleize(sentence)
#  sentence = sentence.split
#  counter = 0

#   loop do
#     sentence[counter].capitalize!

#     counter += 1
#     break if counter == sentence.size
#   end 
# sentence.join(' ')
# end

# words = "the flintstones rock"

# p titleize(words)
# p words 

def titleize(sentence)
  sentence.split.map { |word| word.capitalize!}.join(' ')
end 

words = "the flintstones rock"

p titleize(words)
p words 
