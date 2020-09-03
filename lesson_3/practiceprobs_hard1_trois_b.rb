def mess_with_vars(one, two, three)
  one = "two"
  two = "three"
  three = "one"
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}"
puts "two is: #{two}"
puts "three is: #{three}"

=begin
one is "one"
two is "two"
three is "three"

Notice that reassignment does not modify an object, it just points it somewhere else in memory.
=end