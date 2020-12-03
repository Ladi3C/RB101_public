
STRINGS = {
  0 => "0",
  1 => "1",
  2 => "2",
  3 => "3",
  4 => "4",
  5 => "5",
  6 => "6",
  7 => "7",
  8 => "8",
  9 => "9"
}

def integer_to_array(numbers)
  num_arr = []
  counter = 0
  loop do
    numbers, remainder = numbers.divmod(10)
    num_arr.unshift(remainder)
    counter += 1
    break if numbers == 0
  end
  num_arr
end 

# p integer_to_array(4321)
# p integer_to_array(0)
# p integer_to_array(5000)

def integer_to_string(digits)
  string = ''
  integer_to_array(digits).each do |num|
    string << STRINGS[num]
  end
  string
end

p integer_to_string(4321) #== '4321'
p integer_to_string(0) #== '0'
p integer_to_string(5000) #== '5000'

