[[[1], [2], [3], [4]], [['a'], ['b'], ['c']]].map do |element1|
  element1.each do |element2|
    element2.partition do |element3|
      element3.size > 0
    end
  end
end
=begin

top level : two element array MAP
second level: first array hash 4 arrays of integers  [[1], [2], [3], [4]] EACH
              second array has 3 arrays of string elements [['a'], ['b'], ['c']] EACH
thrid level: working at each array, each string 
=> [[[1], [2],[3], [4]], [['a'], ['b'], ['c']]]
=end