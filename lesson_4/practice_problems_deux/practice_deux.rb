=begin

Problem : How does count treat the block's return value? How can we find out?
          If unfamiliar with count, we can look at ruby docs under array or enumberable. 
          Count returns the number of elements called on, with a block it counts the number of elements
          for which the block returns a true value. 
          The return value should be => 2
=end

lola = ['ant', 'bat', 'caterpillar'].count do |str|
  str.length < 4
end

p lola