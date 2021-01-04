=begin

Problem:
        - if the array is empty return the empty array
        - if array size is 1 then mutliply the number by 7
        - otherwise square each number

Answer : 
          The buggy program printed the results it did because the keyword `elsif` needs a condition to be met
          and there isnt any. 


=end
def my_method(array)
  if array.empty?
    []
  elsif array.size > 1
    array.map do |value|
      value * value
    end
  else
    [7 * array.first]
  end
end


# def my_method(array)
#   if array.empty?
#     []
#   elsif array.size == 1
#     [7 * array.first]
#   else
#     array.map do |value|
#       value * value
#     end 
#   end
# end

# def my_method(array)
#   return [] if array.empty?
#   7 * array.first if array.size == 1
#   array.map { |value| value * value }
# end

p my_method([])
p my_method([3])
p my_method([3, 4])
p my_method([5, 6, 7])