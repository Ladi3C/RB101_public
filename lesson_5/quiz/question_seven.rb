[['a', 'b'], ['c', 'd'], ['e', 'f']].map do |sub_arr|
  sub_arr.map do |letter|
    letter.upcase
  end
end

=begin

Array#map is being called on a multi-dimensinal array. Each inner array is being
passed in to the block parameter as an argument through local variable sub_arr.
Array#map is then being called on to each inner array, and each element in the inner
array is being passed in to local variable, parameter, letter. Each string element in the inner array
is upcased. the return value is a new multi-dimensional array with all elements upcased.
=end