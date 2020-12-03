# def double_odd_numbers(numbers)
#   doubled_odd_numbers = []
#   counter = 0

#   loop do
#     current_number = numbers[counter]
#     current_number *= 2 if current_number.odd?
#     doubled_odd_numbers << current_number

#     counter += 1
#     break if counter == numbers.size
#   end 
#   doubled_odd_numbers
# end

def double_odd_numbers(numbers)
  doubled_odd_numbers = []

  numbers.map do |num|
    if num.odd?
      doubled_odd_numbers << num * 2
    else
      doubled_odd_numbers << num
    end
  end
  doubled_odd_numbers
end

p my_numbers = [1, 4, 3, 7, 2, 6]
p double_odd_numbers(my_numbers)  # => [2, 4, 6, 14, 2, 6]

# not mutated
p my_numbers                      # => [1, 4, 3, 7, 2, 6]