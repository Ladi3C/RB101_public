=begin

Problem: Modify the hash such that each member of the Munster family has an additional 
         "age_group" key that has one of three values describing the age group the family 
         member is in (kid, adult, or senior). Your solution should produce the hash below:

Example:
{ 
"Herman" => { "age" => 32, "gender" => "male", "age_group" => "adult" },
"Lily" => {"age" => 30, "gender" => "female", "age_group" => "adult" },
"Grandpa" => { "age" => 402, "gender" => "male", "age_group" => "senior" },
"Eddie" => { "age" => 10, "gender" => "male", "age_group" => "kid" },
"Marilyn" => { "age" => 23, "gender" => "female", "age_group" => "adult" } 
}

Rules:  kids (0-17)
        adult(18-64)
        senior(65+)

        * use `case` statement
        * use #range

Algorithm:

- we are working DIRECTLY with the given hash
- access the hash (map?)
- access each inner hash to add age group


=end


munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

munsters.map do |person, details|
  case details["age"]
  when 0..17
    details["age_group"] = "kid"
  when 18..64
    details["age_group"] = "adult"
  else
    details["age_group"] = "senior"
  end 
end

p munsters

