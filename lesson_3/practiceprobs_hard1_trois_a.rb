def mess_with_vars(one, two, three)
  one = two
  two = three
  three = one
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}"
puts "two is: #{two}"
puts "three is: #{three}"

=begin
in this example the output will be:
one is : one
two is : two
three is: three

We are only referencing local variables initialized in lines 7,8,9. The puts method is not invoking
the method definition. 
=end