def compute_sum(number)
 (1..number).reduce(:+)
end

 def compute_product(number)
  (1..number).reduce(:*)
end 

p compute_product(5)
p compute_sum(5)