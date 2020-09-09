=begin

Problem: Let's call a method, and pass both a string and an array as parameters
         and see how even though they are treated in the same way by Ruby, the results 
         can be different.

         Study the following code and state what will be displayed...and why:

puts "My string looks like this now: pumpkins"
puts "My array looks like this now: ['pumpkins', 'rutabaga']"

On line 18, we are reassigning which does not mutate my string, so my string is still what it
was originally assigned to.. pumpkins. On line 19, the shovel operator mutates my_array.

=end

def tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga" # pumpkin = pumpkinrutabaga
  an_array_param << "rutabaga"
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"