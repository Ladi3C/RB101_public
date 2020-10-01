=begin

Problem: 
          Write a method that takes a postive integer or zero, and converts it to a string
          representation. 
=end

STRING_NUMBERS = 

{
  0 => '0',
  1 => '1',
  2 => '2',
  3 => '3',
  4 => '4',
  5 => '5',
  6 => '6',
  7 => '7',
  8 => '8',
  9 => '9'
}

def integer_to_string(numbers)
  num_arr = []
  loop do
    numbers, remainder = numbers.divmod(10)
    num_arr.unshift(remainder)
    break if numbers == 0
  end
  
  num_arr.map { |num| num = STRING_NUMBERS[num] }
  num_arr.join
end 


p integer_to_string(4321) == '4321'
p integer_to_string(0) == '0'
p integer_to_string(5000) == '5000'