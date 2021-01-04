=begin
Problem:
        Given this data structure 
        write some code 
        to return an array 
        containing the colors of the fruits CAPITALIZED 
        and the sizes of the vegetables.    UPPERCASED

        The sizes should be uppercase and 
        the colors should be capitalized.
Data Structure:
        Input : hash
        Output: array
Algorithm:
        - use map to access `produce` and `details`

=end
hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}

p (hsh.map do |_, details|
  if details[:type] == 'fruit'
    details[:colors].map { |color| color.capitalize}
  elsif details[:type] == 'vegetable'
    details[:size].upcase
  end
end)