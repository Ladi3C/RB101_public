=begin

Problem: Given this data structure 
         write some code to 
         return an array containing 
         the   colors    of the     fruits    and 
         the   sizes     of the     vegetables.
         the Colors should be Capitalized.
         The SIZES should be UPPERCASE and 

Example: [["Red", "Green"], "MEDIUM", ["Red", "Green"], ["Orange"], "LARGE"]

Data Structure:
         Input: nested Hash
         Output: Array

         #map method 
Algorithm: 

- access the hash (hsh)
- access produce and details(hash)
- if details type is fruit return colors capitalized
  if details type is vegetable return sizes capitalized


=end

hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}

hsh.map do |_, details|
  if details[:type] == "fruit"
    details[:colors].map do |color|
      color.capitalize
    end
  elsif details[:type] == "vegetable"
    details[:size].upcase
  end 
end