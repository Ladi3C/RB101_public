ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

p ages.include?("Spot")
p ages.has_key?("Spot")
# p ages.fetch("Spot", "The Value is not present")
p ages.key?("Spot")
p ages.member?("Spot")