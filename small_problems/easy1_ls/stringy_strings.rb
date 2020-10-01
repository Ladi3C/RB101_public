def stringy(size)
  num_arr = []

  size.times do |index|
    num = index.even? ? 1 : 0
    num_arr << num
  end

  num_arr.join
end 



puts stringy(6) #== '101010'
puts stringy(9) #== '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'