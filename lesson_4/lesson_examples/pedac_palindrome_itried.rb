def change_me(sentence)
  counter = 0
  

  loop do
    sentence[counter]
    if sentence == sentence.reverse
      sentence.upcase!
    else 
      sentence
    end 
    counter += 1
  end 
end 

p change_me("I LOVE my mom and dad equally")