=begin

Method definition digit_list is defined with one parameter, local variable number.
Local variable digits is initialized and assigned to an empty array on the next line.
A loop is created.
Local variable remainder is initialized in horizontal assignment => number, remainder
#divmod method is called on number with an integer (10) as an argument. 
#unshift method is called on digits array with the remainder variable being added to it. 
the loop will break when number equals to 0. 
The last line to be evaluated is the digits array. 
=end

def digit_list(number)
  digits = []
  loop do
    number, remainder = number.divmod(10)
    digits.unshift(remainder)
    break if number == 0
  end
  digits
end 

puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true