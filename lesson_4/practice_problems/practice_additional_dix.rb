=begin

Problem: Given the munsters hash below
         Modify the hash such that each member of the Munster family has an 
         additional "age_group" key that has one of three values describing 
         the age group the family member is in (kid, adult, or senior).
          Your solution should produce the hash below

Example: { "Herman" => { "age" => 32, "gender" => "male", "age_group" => "adult" },
        "Lily" => {"age" => 30, "gender" => "female", "age_group" => "adult" },
        "Grandpa" => { "age" => 402, "gender" => "male", "age_group" => "senior" },
        "Eddie" => { "age" => 10, "gender" => "male", "age_group" => "kid" },
        "Marilyn" => { "age" => 23, "gender" => "female", "age_group" => "adult" } }
Input: hash
Output: hash

Rules :  add an age group key : age adult or senior
        Note: a kid is in the age range 0 - 17, an adult is in the range 18 - 64 and a senior is aged 65+.

Pseudo:   we know to add to a hash we simply can do munsters[key] = value 


=end

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

munsturs_update = munsters.each do |name, details|
                    case details["age"]
                    when 0 ...18
                      details["age_group"] = "kid"
                    when 18...65
                      details["age_group"] = "adult"
                    else 
                      details["age_group"] = "senior"
                    end 
                  end 
p munsturs_update