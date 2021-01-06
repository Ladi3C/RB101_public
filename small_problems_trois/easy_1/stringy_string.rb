# def stringy(num)
#   string = ''
#   counter = 1
#   loop do
#     string << '1' if counter.odd?
#     string << '0' if counter.even?

#     counter += 1
#     break if counter > num 
#   end
#   string
# end

def stringy(number)
  string = ''
  number.times { |num| num.odd? ? (string << "0") : (string << '1') } 
  string
end

p stringy(6) #== '101010'
p stringy(9) #== '101010101'
p stringy(4) #== '1010'
p stringy(7) #== '1010101'

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'