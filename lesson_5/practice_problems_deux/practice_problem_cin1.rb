munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}



male_age = 0
munsters.each_value do |person|
  male_age += person["age"] if person["gender"] == "male"
end

p male_age


# male_age = 0

# munsters.each do |person|
#   person.select do |k, v|
#     if k["gender"] == "male"
#       male_age += k["age"]
#     end 
#   end 
# end 

# p male_age