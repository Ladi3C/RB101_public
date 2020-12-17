=begin
# Write a method 
  that takes in a number 
  and returns a string, 
  placing a dash in between odd digits.

Input  : integer
Output : string

Algorithm: 
-convert given integer into string
-break down string into array of characters(each of the digits as strings)
-iterate through the array with index (and using #map)
-on each iteration, check if the current digit is odd and if the digit next to it (at index + 1) is also odd
  -if so, add a '-' to the digit
  -otherwise, just maintain the digit as is and move onto the next iteration
-once finished iterating, join the resulting array into a string


=end

# def dasherizer(num)
#   digits_arr = num.to_s.chars
#   digits_arr.map.with_index do |digit, index|
#     if digit.to_i.odd? && digits_arr[index + 1].to_i.odd?
#       digit + '-'
#     else
#       digit
#     end
#   end.join
# end

def dasherizer(digits)
  digits_arr = digits.to_s.chars.map(&:to_i)
  result = []
  counter = 0
  loop do
    if counter == digits_arr.size - 1
      result << digits_arr[counter].to_s
    elsif digits_arr[counter].odd? && digits_arr[counter + 1].odd?
      result << digits_arr[counter].to_s << '-'
    else
      result << digits_arr[counter].to_s
    end
    counter += 1
    break if counter == digits_arr.size
  end
result.join
end

p dasherizer(2112) == '21-12'
p dasherizer(201105742) == '201-105-742'
p dasherizer(123456789) == '123456789'
p dasherizer(21121) == '21-121'
