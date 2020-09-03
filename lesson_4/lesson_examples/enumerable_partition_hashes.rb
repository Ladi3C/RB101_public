long, short = { a: "ant", b: "bear", c: "cat"}.partition do |key, value|
  value.size > 3
end 

p long
p short