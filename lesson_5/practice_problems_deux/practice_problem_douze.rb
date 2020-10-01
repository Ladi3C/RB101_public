arr = [[:a, 1], ['b', 'two'], ['sea', {c: 3}], [{a: 1, b: 2, c: 3, d: 4}, 'D']]
hsh = {}
arr.each do |sub_arr|
  hsh[sub_arr[0]] = [sub_arr[1]]
end 


# counter = 0

#   loop do
#     break if counter == arr.size

#     current_key = arr[counter][0]
#     current_value = arr[counter][1]
#     hsh[current_key] = current_value

#     counter += 1
#   end 

  p hsh







# expected return value: {:a=>1, "b"=>"two", "sea"=>{:c=>3}, {:a=>1, :b=>2, :c=>3, :d=>4}=>"D"}