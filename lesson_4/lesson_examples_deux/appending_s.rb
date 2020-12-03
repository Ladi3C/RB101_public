fruits = ["apple", "banana", "pear"]
transformed_elements = []
# counter = 0

# loop do
#   current_fruit = fruits[counter]

#   transformed_elements << current_fruit + 's'
  
#   counter += 1
#   break if counter == fruits.size
# end 

# p transformed_elements

fruits.map do |fruit|
  transformed_elements << fruit + "s"
end
 
p transformed_elements