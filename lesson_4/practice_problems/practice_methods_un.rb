=begin

Selection selects based on "truthiness".. the last line evaluated is 10, therefore a NEW
array is returned, [1, 2, 3]. 

=end

[1, 2, 3].select do |num|
  num > 5
  'hi'
end