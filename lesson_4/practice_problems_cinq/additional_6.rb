flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

p (flintstones.map! do |name|
  name[0,3]
end)

p flintstones