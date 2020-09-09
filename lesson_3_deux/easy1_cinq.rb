=begin

Problem:  Programmatically determine if 42 lies between 10 and 100.
          hint: Use Ruby's range object in your solution.

=end 

p (10..100).cover?(42)

#  if (10..100).include?(42)
#   puts "42 does indeed lay between 10 and 100"
# end 