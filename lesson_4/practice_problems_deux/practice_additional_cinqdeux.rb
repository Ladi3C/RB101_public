flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones_indx = flintstones.index { |name| name[0, 2] == "Be"}

p flintstones_indx