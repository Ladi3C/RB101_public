hash = { a: 'ant', b: 'bear' }
hash.shift
p hash
=begin

What does shift do in the following code? How can we find out?
shift destructively deletes the first key value pair  in the hash. Whats left is
=>hash = [b: 'bear']
=end