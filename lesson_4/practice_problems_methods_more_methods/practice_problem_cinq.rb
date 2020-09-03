=begin
What does shift do in the following code? How can we find out?

initial answer: shift will return and remove key a and leave only key b with its value.
after documentation: it will return a two item array [key, value]

=> [a:, 'ant'] 
=end

hash = { a: 'ant', b: 'bear' }
hash.shift