=begin
How does count treat the block's return value? How can we find out?

Answer: We can find out looking at array#count ruby documentation. Count returns the amount of 
elements that is being called on. Here there are two elements that are less in length than 4.
2 is returned. 

=end 


lola = ['ant', 'bat', 'caterpillar'].count do |str|
  str.length < 4
end

