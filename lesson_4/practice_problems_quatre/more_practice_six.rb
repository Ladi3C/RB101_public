flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

# flintstones.map! do |name|
#   name[0, 3]
# end 

# p flintstones

counter = 0

loop do
  flintstones[counter] = flintstones[counter][0, 3]

  counter += 1
  break if counter == flintstones.size
end


p flintstones