=begin
Problem: 
          Suppose we wish to now write a more generic general_select method 
          so that we can specify whether we're interested in selecting fruits 
          or vegetables. 
Input: hash, selection criteria
Output: hash of selection criteria

Algorithm:

define general_select method with two parameters (hsh, selection criteria)
selected_produce as an empty hash
establish keys
counter

create a loop
current key
current value
add key to empty hash if the current value is equal to the selection criteria
increase counter 
exit the loop
=end

# def general_select(produce_list, criteria)
#   selected_produce = {}
#   counter = 0
#   produce_keys = produce_list.keys

#   loop do
#     break if counter == produce_list.size

#     current_key = produce_keys[counter]
#     current_value = produce_list[current_key]

#     if current_value == criteria
#       selected_produce[current_key] = current_value
#     end 

#     counter += 1
#   end 
#   selected_produce
# end 
def general_select(produce_list, criteria)
  selected_produce = {}
  
  produce_list.select do |key, value|
    if value == criteria
      selected_produce[key] = value 
    end
  end
  selected_produce
end  

produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

p general_select(produce, 'Fruit')     # => {"apple"=>"Fruit", "pear"=>"Fruit"}
p general_select(produce, 'Vegetable') # => {"carrot"=>"Vegetable", "broccoli"=>"Vegetable"}
p general_select(produce, 'Meat')      # => {}