objects = ["hello", :key, 10, []]
counter = 0

loop do
  puts objects[counter].class
  counter += 1

  break if counter == objects.size
end