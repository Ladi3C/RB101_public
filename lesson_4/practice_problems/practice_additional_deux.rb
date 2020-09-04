=begin

Problem:   Add up all of the ages from the Munster family hash:
Input:     Hash
Output:    Integer

Rules:     Add all the ages 

=end


ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }
ages_sum = 0

ages.each { |_,age| ages_sum += age }

p ages_sum
