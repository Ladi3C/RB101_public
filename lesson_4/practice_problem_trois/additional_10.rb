=begin

Problem: 

Modify the hash such that each member of the Munster family has an additional 
"age_group" key that has one of three values describing the age group the 
family member is in (kid, adult, or senior). Your solution should produce the hash below

hint: try using a case statement and Range 

add an additional "age_group" :  kid        0 - 17
                                 adult      18 - 64
                                 senior     65+

- Munsters is a NESTED hash
- Key is each family member
- Value is a hash pertaining to family member data

Example: 
          { "Herman" => { "age" => 32, "gender" => "male", "age_group" => "adult" },
            "Lily" => {"age" => 30, "gender" => "female", "age_group" => "adult" },
            "Grandpa" => { "age" => 402, "gender" => "male", "age_group" => "senior" },
            "Eddie" => { "age" => 10, "gender" => "male", "age_group" => "kid" },
            "Marilyn" => { "age" => 23, "gender" => "female", "age_group" => "adult" } }

Data Structure: 

Input:  NESTED HASH
Output: UPDATE the NESTED HASH

Iterating through hashes

algorithm: - access the munsters hash
           - iterate through each family member 
           - create a case statement that will add the 'age_group' as KEY
           - kid senior adult as  VALUE

=end

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

munsters.each do |name, details|
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