=begin

Problem: In the array:
         Find the index of the first name that starts with "Be"

=end 

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

counter = 0
loop do
  break if counter == flintstones.size

  if flintstones[counter].start_with?('Be')
    puts counter
  end

  counter += 1
end 


