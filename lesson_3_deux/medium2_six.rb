=begin

How could the unnecessary duplication in this method be removed?


=end

def color_valid(color)
  color == "blue" || color == "green"
end

p color_valid("red")
p color_valid("blue")