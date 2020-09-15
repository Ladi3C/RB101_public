=begin
['a', 'b', 'c'].some_method do |item|
  puts item
end
# => []




=end

lola = ['a', 'b', 'c'].select do |item|
  puts item
end
# => []

p lola