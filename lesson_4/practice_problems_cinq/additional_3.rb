ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

p (ages.select do |_, age|
  age <= 99
end)

p (ages.reject do |_, age|
  age >= 99
end)

p (ages.keep_if do |_, age|
  age <= 99
end)

p ages
