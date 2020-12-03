=begin
Problem: 
          Given the following data structure, and without using the Array#to_h method, 
          write some code that will return a hash where the key is the first item 
          in each sub array and the value is the second item.
Example: 
          {:a=>1, "b"=>"two", "sea"=>{:c=>3}, {:a=>1, :b=>2, :c=>3, :d=>4}=>"D"}

Data Structure:
            Input: nested array
            Output: hash
Algorithm:

- create an empty hash variable
- iterate through arr variable and assign the 0 index as a key and 1index as value

=end

arr = [[:a, 1], ['b', 'two'], ['sea', {c: 3}], [{a: 1, b: 2, c: 3, d: 4}, 'D']]

hsh = {}
counter = 0

loop do 
  hsh[arr[counter][0]] = arr[counter][1]

  counter +=1
  break if counter == arr.size
end

p hsh








# arr.each do |sub_arr|
#   hsh[sub_arr[0]] = sub_arr[1]
# end 

# p hsh