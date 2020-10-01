=begin

write a method xor?
takes two arguments
returns true IF ONE of its arguments are truthy
returns FALSE of both conditions are truthy
SHOULD RETURN BOOLEAN!
=end

def xor?(val1, val2)
  return true if val1 && !val2
  return true if val2 && !val1
  false
end


p xor?(5.even?, 4.even?)# == true
p xor?(5.odd?, 4.odd?) #== true
p xor?(5.odd?, 4.even?) # == false
p xor?(5.even?, 4.odd?) #== false