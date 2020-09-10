=begin

Problem: Amend this array so that the names are all shortened to just the first three characters:
=end

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)



flintstones.map! do |name|
  name[0, 3]
end 

p flintstones