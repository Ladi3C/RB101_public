arr = [[:a, 1], ['b', 'two'], ['sea', {c: 3}], [{a: 1, b: 2, c: 3, d: 4}, 'D']]


# expected return value: {:a=>1, "b"=>"two", "sea"=>{:c=>3}, {:a=>1, :b=>2, :c=>3, :d=>4}=>"D"}

# p (arr.each_with_object ({}) do |sub_arr, hsh|
#   hsh[sub_arr[0]] = sub_arr[1]
# end)

counter = 0
hsh = {}
loop do
  hsh[arr[counter][0]] = arr[counter][1]

  counter += 1
  break if counter == arr.size
end 

p hsh