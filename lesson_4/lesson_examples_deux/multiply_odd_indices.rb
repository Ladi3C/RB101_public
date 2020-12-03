=begin
Problem:
      double the element if it is in an odd index

Input:  array
Output: array

define double odd indices method
create an empty array
create a loop
establish current element
if current element index is odd then double it and push it to empty array
if index is even then just push that element
increase counter
exit loop
empty array as last line evaluated
=end

# def double_odd_indices(numbers)
#   doubled_odd_indices = []
#   counter = 0

#   loop do
#     current_number = numbers[counter]
#     current_number *= 2 if counter.odd?
#     doubled_odd_indices << current_number

#     counter += 1

#     break if counter == numbers.size
#   end
#   doubled_odd_indices
# end

def double_odd_indices(numbers)
  doubled_odd_indices = []

  numbers.map.with_index do |num, idx|
    if idx.odd?
      doubled_odd_indices << num * 2
    else 
      doubled_odd_indices << num
    end 
  end 
  doubled_odd_indices

end

p my_numbers = [1, 4, 3, 7, 2, 6]
p double_odd_indices(my_numbers) # => [1, 8, 3, 14, 2, 12]
p my_numbers