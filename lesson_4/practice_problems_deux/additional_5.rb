flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

p flintstones.index { |name| name[0..1] == 'Be'}


p flintstones.index { |name| name[0,2] == 'Be'}


flints = flintstones.clone
new_flints = []
p flints.map! { |name| name[0,3] }

#p doodles
p flints
p new_flints