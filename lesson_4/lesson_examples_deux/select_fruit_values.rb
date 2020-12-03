=begin
In this example we want to select the key-value pairs where the value is 'Fruit'.

Iterate through produce
select keys
establish current key
establish current value
create an empty hash

push current key if current value is equal to 'Fruit'
exit the loop

new hash as last line evaluated
=end
produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

# def select_fruit(hsh)
#   keys = hsh.keys
#   selected_fruits = {}
#   counter = 0

#   loop do
#     current_key = keys[counter]
#     current_value = hsh[current_key]

#     if current_value == "Fruit"
#       selected_fruits[current_key] = current_value
#     end 

#     counter += 1
#     break if counter == hsh.size
#   end
#   selected_fruits
# end

def select_fruit(hsh)
  selected_fruits = {}

  hsh.select do |key, value|
    if value == "Fruit"
      selected_fruits[key] = value
    end

  end
  selected_fruits 
end 

p select_fruit(produce) # => {"apple"=>"Fruit", "pear"=>"Fruit"}