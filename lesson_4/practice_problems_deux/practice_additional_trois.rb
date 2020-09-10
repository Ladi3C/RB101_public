=begin

Problem: In the age hash:
         remove people with age 100 and greater.
=end

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

young_ages = ages.delete_if do |name, age|
  age >= 100
end 

p young_ages
