=begin

Problem : What does shift do in the following code? How can we find out?

Answer  : We can find out by looking at the ruby docs for shift under the hash class. 
          Shift destructively removes the FIRST key-value pair and returns what is removed
          in a two-item array [key, value]. Hash.shift returns => [:a, 'ant']. 
          The original hash now holds {b: 'bear'}
=end 

hash = { a: 'ant', b: 'bear' }
hash.shift