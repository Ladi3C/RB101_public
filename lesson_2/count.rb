require "pry"

counter = 0 
anything = []

loop do 
  counter += 1
  counter
  anything << counter * 2
  break if counter == 10
  #binding.pry
end

anything
puts
p anything
p counter