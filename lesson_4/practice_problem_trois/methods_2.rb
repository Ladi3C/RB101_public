p (['ant', 'bat', 'caterpillar'].count do |str|
  str.length < 4
end)

=begin
How does count treat the block's return value? How can we find out?

We can find out by looking at the ruby docs. Array#count
'ant', 'bat'
=> 2

count considers the truthiness of the blocks return value
=end