=begin

Problem: Create a method that only multiplies by 2 if the value is odd. 
=end

def double_odd_numbers(numbers)
  doubled_odd = []
  counter = 0

  loop do
    break if counter == numbers.size

    current_value = numbers[counter]

    if current_value.odd?
      doubled_odd << current_value * 2
    else 
      doubled_odd << current_value
    end 

    counter += 1
  end 

  doubled_odd
end 


my_numbers = [1, 4, 3, 7, 2, 6]
p double_odd_numbers(my_numbers)  # => [2, 4, 6, 14, 2, 6]