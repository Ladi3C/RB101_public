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
  num_arr = string.chars.map { |letter| NUMBERS[letter]}
  value = 0
  num_arr.each { |num| value = 10 * value + num}
  value
end



p string_to_integer('4321')# == 4321
p string_to_integer('570') #== 570


=begin

[4, 3, 2, 1].each do |num| 
value = 10 * value + num
end

value = 0
10 * 0 + 4
value = 4
10 * 4 = 40 + 3
value = 43
10 * 43 = 430 + 2
value = 432
10 * 432 = 4320 + 1
value = 4321
=end