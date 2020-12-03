colors = ["green", "blue", "purple", "orange"]
counter = 0

loop do
  puts "This is the color #{colors[counter]}."
  counter += 1

  break if counter == colors.size
end
