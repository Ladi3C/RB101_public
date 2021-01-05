def include?(array, element)
  result = array.map {|num| num == element }
  result.any? { |bool| bool == true }
end


# p include?([1,2,3,4,5], 3) #== true
# p include?([1,2,3,4,5], 6) #== false
# p include?([], 3) #== false
# p include?([nil], nil) #== true
# p include?([], nil) #== false

p include?([1,2,3,4,5], 3) == true
p include?([1,2,3,4,5], 6) == false
p include?([], 3) == false
p include?([nil], nil) == true
p include?([], nil) == false