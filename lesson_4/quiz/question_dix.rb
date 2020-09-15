=begin

1) NO  TRANSFORMATION ==> MAP
2) YES SELECTION
    new_hsh = {a: 'apple', c:'orange', e: 'banana'}
3) YES SELECTION input: array
   output: array

   arr = ['is', 'the']
4) NO MAP TRANSFORMERS[3, 5, 8, 9, 12, 16]


=end

num_arr = [2, 4, 7, 8, 11, 15]
counter = 0

until counter == num_arr.size
  puts num_arr[counter] + 1

  counter += 1
end
p num_arr