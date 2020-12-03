def xor?(boolean1, boolean2)
  return true if boolean1 && !boolean2
  return true if boolean2 && !boolean1
  false
end 

p xor?(5.even?, 4.even?)
p xor?(5.odd?, 4.odd?)
p xor?(5.odd?, 4.even?)
p xor?(5.even?, 4.odd?)