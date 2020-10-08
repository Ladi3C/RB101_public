
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

# ages.delete_if do |key, value|
#   value >= 100
# end 

# young_age = ages.select do |_, age|
#               age < 99
#             end

# p young_age

ages.keep_if do |_, age|
  age < 99
end 

p ages
