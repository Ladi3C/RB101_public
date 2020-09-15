=begin

Problem: Given the following data structure, and without using the Array#to_h method,
         write some code that will return a hash where the key is the first item in 
         each sub array and the value is the second item.


Example: # expected return value: {:a=>1, "b"=>"two", "sea"=>{:c=>3}, {:a=>1, :b=>2, :c=>3, :d=>4}=>"D"}

Rules:   DO NOT USE Array#to_h method
         Return a hash where :   
                                the key is the first item in each sub array
                                the value is the second item

      {:a=>1, "b"=>"two", "sea"=>{:c=>3}, {:a=>1, :b=>2, :c=>3, :d=>4}=>"D"}



=end

arr = [[:a, 1], ['b', 'two'], ['sea', {c: 3}], [{a: 1, b: 2, c: 3, d: 4}, 'D']]

# new_hsh = {}
# arr.each do |element|
#   new_hsh[element[0]] = element[1]
# end 

# p new_hsh



new_hsh = {}
counter = 0

loop do 
  break if counter == arr.size

  current_key = arr[counter][0]
  current_value = arr[counter][1]
  new_hsh[current_key] = current_value

  counter += 1
  end

p new_hsh 