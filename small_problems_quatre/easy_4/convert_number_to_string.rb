STRINGS = %w(0 1 2 3 4 5 6 7 8 9)

def integer_to_string(digits)
digits_arr = []
  loop do
    digits, remainder = digits.divmod(10)
    digits_arr.unshift(remainder)
    break if digits == 0 
  end
  
  digits_arr.map {|num| STRINGS[num] }.join
end


p integer_to_string(4321) #== '4321'
p integer_to_string(0) #== '0'
p integer_to_string(5000) #== '5000'

p integer_to_string(4321) == '4321'
p integer_to_string(0) == '0'
p integer_to_string(5000) == '5000'
