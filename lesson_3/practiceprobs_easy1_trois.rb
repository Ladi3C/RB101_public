# replace the word "important" to "urgent" in this string. 

advice = "Few things in life are as important as house training your pet dinosaur"
advice.gsub!("important", "urgent")
p advice