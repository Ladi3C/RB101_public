=begin

Problem: What happens if we try to initialize a Hash that contains duplicate keys?

Answer: If we try to initialize a Hash that contains duplicate keys, the first key will be overridden
and the last key to be initilized will be the one created.

hsh => {b:200, c: 300, a: 400}
=end 

hsh = {a: 100, b: 200, c: 300, a: 400}
p hsh