=begin

Problem: Add up all of the ages from the Munster family hash:

set an empty variable that equals to 0
set a counter

create a loop
create keys list 
set break condition

create current key
create current value
add the values somehow 



=end

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }
munster_family_age = 0

ages.each do|_, age|
  munster_family_age +=age
end 

p munster_family_age


# munster_family_age = ages.values.sum
# p munster_family_age