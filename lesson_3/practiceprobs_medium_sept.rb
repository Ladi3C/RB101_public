munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

def mess_with_demographics(demo_hash)
  demo_hash.values.each do |family_member|
    family_member["age"] += 42
    family_member["gender"] = "other"
  end
end

p mess_with_demographics(munsters)
puts 
p munsters

# I believe this demographic gets ransacked because we are calling the method definition
# munsters and passing in as an argument to mess_with_demographics. BUT!! nothing is
# output to the screen. We didnt invoke it the method definition with the puts,print, or
# p method. Also, the hash munsters is not modofied whatsoever because it is a variable
# initialized outside of the method definition,and onceagain,although we can pass it as an 
# argument to the method, we arent doing anything with it. KIND OF WRONG `