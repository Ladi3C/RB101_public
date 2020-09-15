=begin

Problem: Given this data structure write some code to return an array containing 
         the colors of the fruits and the sizes of the vegetables. The sizes should 
         be uppercase and the colors should be capitalized.

Example: [["Red", "Green"], "MEDIUM", ["Red", "Green"], ["Orange"], "LARGE"]

Rules:   Return an array
                        the colors of the fruits CAPITALIZED
                        sizes of the vegetable   UPPERCASE

=end

hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}



lola = hsh.map do |_, value|
  if value[:type] == 'fruit'
    value[:colors].map do |color|
      color.capitalize
      end 
  elsif value[:type] == 'vegetable'
    value[:size].upcase
  end
end 

p lola