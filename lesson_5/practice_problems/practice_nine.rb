=begin

Problem: Given this data structure, return a new array of the same structure 
         but with the sub arrays being ordered (alphabetically or numerically 
         as appropriate) in descending order.

Rules:   Return a New aray
         same structure
         sub arrays being ordered (alphabetically or numberically)
         descending order



=end

arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]

lola = arr.map do |sub_arr|
 sub_arr.sort do |a, b|
  b <=> a
  end
end  

p lola


