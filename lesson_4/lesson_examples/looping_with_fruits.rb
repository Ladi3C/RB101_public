=begin

Problem:  select the key-value pairs where the value is 'Fruit'

Example: 
          select_fruit(produce) # => {"apple"=>"Fruit", "pear"=>"Fruit"}
=end

produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

def select_fruit(produce_list)
  produce_keys = produce_list.keys
  counter = 0
  select_fruits ={}

  loop do 

    break if counter == produce_keys.size

    current_key = produce_keys[counter]
    current_value = produce_list[current_key]

    if current_value == "Fruit"
      select_fruits[current_key] = current_value
    end 

    counter += 1
  end
  select_fruits
end

pselect_fruit(produce)