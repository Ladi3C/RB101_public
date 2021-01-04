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

def signed_integer_to_string(digits)
  case
  when digits < 0
    '-' + (integer_to_string(digits.abs))
  when digits == 0
    '0'
  else 
    '+' + (integer_to_string(digits))
  end
end

p signed_integer_to_string(4321) #== '+4321'
p signed_integer_to_string(-123) #== '-123'
p signed_integer_to_string(0) #== '0'