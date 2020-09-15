=begin

Problem: Append an "s" to each string in the array.

=end

fruits = ['apple', 'banana', 'pear']
pluralized_fruit = []
counter = 0

loop do
  current_fruit = fruits[counter]
  
  pluralized_fruit << current_fruit + "s"
  
  counter += .
  break if counter == fruits.size
end

p pluralized_fruit

# this would be the map version ==> fruits.map! { |fruit| fruit + "s" }