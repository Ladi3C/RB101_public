
arr = [1, 2, 3, 4, 5]
p arr.take(2)
p arr

=begin

According to ruby docs: 
      take returns aa new array containing the first element that is a non negative integer.

It is not destructive. If documentation does not supply that answer, we can also check in irb,
in this case call inspect on arr and it is clear that Array#take is not destructive. 

=end