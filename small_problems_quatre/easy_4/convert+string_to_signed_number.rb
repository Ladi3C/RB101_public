# def string_to_integer(string)
#   num_arr = string.chars.map { |letter| NUMBERS[letter]}
#   value = 0
#   num_arr.each { |num| value = 10 * value + num}
#   value
# # end

NUMBERS = {
  '0' =>  0,
  '1' =>  1,
  '2' =>  2,
  '3' =>  3,
  '4' =>  4,
  '5' =>  5,
  '6' =>  6,
  '7' =>  7,
  '8' =>  8,
  '9' =>  9
}


def string_to_integer(string)
  num_arr = string.delete('^0-9').chars.map { |letter| NUMBERS[letter]}
  value = 0
  num_arr.each { |num| value = 10 * value + num }
  value
end

# p string_to_integer('4321') #== 4321
# p string_to_integer('570') #== 570


def string_to_signed_integer(strings)
  string_to_integer(strings)
  case
  when strings.start_with?('-')
    -(string_to_integer(strings))
  when strings.start_with?('+')
    string_to_integer(strings)
  else 
    string_to_integer(strings)
  end
end


p string_to_signed_integer('4321') #== 4321
p string_to_signed_integer('-570') #== -570
p string_to_signed_integer('+100') #== 100

