=begin

Problem:  Select the key-value pairs where the value is 'Fruit'. 

Example:  select_fruit(produce) # => {"apple"=>"Fruit", "pear"=>"Fruit"}

Algorithm:

- define method select_fruit
- takes one parameter
- initialize a local variable that hold an empty hash
- set the counter
- create a loop
- set a break condition
- decide where to place variable_keys 
- set the current key
- set the current value
- add the key to the empty variable if the value is 'Fruit'
- counter += 1
- set the empty variable as the last line that is evaluated in the method definition
=end

def select_fruit(produce_list)
  selected_fruit = {}
  counter = 0
  produce_keys = produce_list.keys

  loop do
    break if counter == produce_keys.size

    current_produce = produce_keys[counter]
    current_value = produce_list[current_produce]

    if current_value == 'Fruit'
      selected_fruit[current_produce] = current_value
    end 

    counter += 1
  end 
  selected_fruit
end 


produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

p select_fruit(produce) # => {"apple"=>"Fruit", "pear"=>"Fruit"}
