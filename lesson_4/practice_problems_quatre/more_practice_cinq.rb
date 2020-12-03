flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)


# p (flintstones.select do |name|
#   name.start_with?("Be")
# end) 

p (flintstones.index { |name| name[0, 2] == "Be" })
