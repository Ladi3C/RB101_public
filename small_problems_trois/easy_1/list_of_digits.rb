# def digit_list(digits)
#   digits.to_s.chars.map(&:to_i)
# end

# def digit_list(digits)
#   digits.digits.reverse
# end

def digit_list(digits)
  arr = []
  loop do
    digits, remainder = digits.divmod(10)
    arr.unshift(remainder)
    arr

    break if digits == 0
  end
  arr
end

# def digit_list(digits)
#   digits.to_s.chars.map do |num|
#     num.to_i
#   end
# end
p digit_list(12345) #== [1, 2, 3, 4, 5]     # => true
p digit_list(7) #== [7]                     # => true
p digit_list(375290) #== [3, 7, 5, 2, 9, 0] # => true
p digit_list(444) #== [4, 4, 4]             # => true

# p digit_list(12345) == [1, 2, 3, 4, 5]     # => true
# p digit_list(7) == [7]                     # => true
# p digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
# p digit_list(444) == [4, 4, 4]             # => true