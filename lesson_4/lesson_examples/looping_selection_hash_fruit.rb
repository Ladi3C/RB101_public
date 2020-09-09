=begin

Problem: Select the key-value pairs where the value is 'Gucci'
Example: p select_designer(outfit) # => {"shoes"=>"Gucci", "belt"=>"Gucci"}

Input variable containing a hash
Output hash 

Data Algorithm:

- define method with one arguement
- Loop through KEYS tp access values
- set a variable to reference keys
- set a counter
- empty hash variable 
- create loop
- set break condition at the top in case parameter is an empty hash
- set the current key
- set the current value
- if statement is truthy
- empty hash[currentkey] = value 
- add counter for next key
- return the hash as the last nine evaluated 
=end

def select_designer(outfit_list)
  outfit_keys = outfit_list.keys
  counter = 0
  selected_designer = {}

  loop do
    break if counter == outfit_keys.size

    current_key = outfit_keys[counter]
    current_value = outfit_list[current_key]

    if current_value == "Gucci"
      selected_designer[current_key] = current_value
    end

    counter += 1
  end
  selected_designer
end



outfit = {
  'shoes' => 'Gucci',
  'shirt' => 'YSL',
  'belt' => 'Gucci',
  'jeans' => 'Zara'
}

p select_designer(outfit) # => {"apple"=>"Fruit", "pear"=>"Fruit"}