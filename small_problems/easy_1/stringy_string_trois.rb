def stringy(integer)
string = ""
counter = 0

  loop do
  break if counter == integer

  string << '1' if counter.even?
  string << '0' if counter.odd?

  counter += 1
  end 
  string   
end 
puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'