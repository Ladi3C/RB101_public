=begin
Problem: 
        figure out the total age of just the male members of the family.

Example: => 444

Data Structure:
                Input: HASH
                Output: Integer

Algorithm: 

access the hash : it is a nested hash
iterate through each person, each subhash
if the gender is male add it to a male age variable 
=end

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

male_age = 0

# munsters.each do |person|
#   person.each do |k, v| 
#     if k["gender"] == "male"
#       male_age += k["age"]
#     end 
#   end 
# end 

# p male_age

munsters.each_value do |details|
  male_age += details["age"] if details["gender"] == "male"
end

p male_age