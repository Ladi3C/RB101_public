# Programatically determine if 42 lies between 10 - 100

# if 42.between?(10, 100)
#   puts "42 lies between 0 and 100."
# end

if (10..100).cover?(42)
  puts "42 lies between 0 and 100"
end  