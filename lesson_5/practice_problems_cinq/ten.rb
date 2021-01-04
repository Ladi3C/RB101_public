
p ([{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}].map do |hsh|
  incremented_hsh = {}
  hsh.each do |k, v|
    incremented_hsh[k] = v + 1
  end
  incremented_hsh 
end) 

