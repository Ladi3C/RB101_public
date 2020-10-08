=begin

Problem: Given the following data structure, and without using the Array#to_h method, 
         write some code that will return a hash where the key is the first item in 
         each sub array and the value is the second item.

Dissect: - Data Structure: NESTED ARRAY
         - RETURN a HASH
         - Key :   first item   index 0
         - Value:  second item  index 1
         - EXPLICIT rule: DO NOT USE TO_H METHOD!!!!!!!!!!!!

[   [:a, 1]    ,    ['b', 'two']   ,   ['sea', {c: 3}]   ,   [{a: 1, b: 2, c: 3, d: 4},    'D' ]           ]
    {:a=>1     ,     "b" => "two"  ,    "sea"=>{:c=>3}   ,   {:a=>1, :b=>2, :c=>3, :d=>4} =>"D"}

Example: expected return value: 

          {:a=>1, "b"=>"two", "sea"=>{:c=>3}, {:a=>1, :b=>2, :c=>3, :d=>4}=>"D"}
          {:a=>1, "b"=>"two", "sea"=>{:c=>3}, {:a=>1, :b=>2, :c=>3, :d=>4}=>"D"}
          {:a=>1, "b"=>"two", "sea"=>{:c=>3}, {:a=>1, :b=>2, :c=>3, :d=>4}=>"D"}
=end

arr = [[:a, 1], ['b', 'two'], ['sea', {c: 3}], [{a: 1, b: 2, c: 3, d: 4}, 'D']]

arr_hsh = {}
arr.each do |sub_arr|
  arr_hsh[sub_arr[0]] = sub_arr[1]
end 

p arr_hsh

# arr_hsh = {}
# counter = 0
# loop do
#   break if counter == arr.size

#   current_key = arr[counter][0]
#   current_value = arr[counter][1]
#   arr_hsh[current_key] = current_value

#   counter += 1
# end

# p arr_hsh
