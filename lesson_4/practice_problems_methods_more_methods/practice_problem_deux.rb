=begin

How does count treat the block's return value? How can we find out?

count returns number of items in the arument, when a block is given it will return the number 
of elements that are truthy. 

In this case its two elements,that are truthy,because they are less than 4 characters in length. 

=end 



['ant', 'bat', 'caterpillar'].count do |str|
  str.length < 4
end