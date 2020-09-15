=begin

Problem: 
    
      Given the following data structure and without modifying the original array, 
      use the map method to return a new array identical in structure to the original
      but where the value of each integer is incremented by 1.

      An array
      with hashes 
      map method
      value of each integer is incremented by 1
=end 

[{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}].map do |hsh|
  incremented_hsh = {}
  hsh.each do |key, value|
    incremented_hsh[key] = value + 1
  end
 p incremented_hsh
end 

