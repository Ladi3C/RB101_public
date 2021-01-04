# def sum(num)
#   num.to_s.chars.map(&:to_i).inject(:+)
# end

def sum(num)
  average = 0
  string_digits = num.to_s.chars

  string_digits.each do |string_digit|
    average += string_digit.to_i
  end
  average
end
p sum(23) #== 5
p sum(496) #== 19
p sum(123_456_789) #== 45