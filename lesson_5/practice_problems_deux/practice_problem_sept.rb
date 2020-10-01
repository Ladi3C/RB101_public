a = 2
b = [5, 8]
arr = [a, b]       #[2, [5, 8]]

arr[0] += 2        #[4, [5, 8]]
arr[1][0] -= a     #[4, [3, 8]]

p a
p b
p arr
=begin

On line 1, local variable a is initialized and assigned to an integer of two.
On line 2, local variable b is initialized and assigned to a two element array containing integers 5 and 8.
On line 3, local variable arr is initialized and assigned to a two element array containing the values of
local variables a and b.

On line 5, the first element in local variable arr is being reassined to 2+2 = 4
On line 5, the second element b which is [5, 8], the value in index 0 is being reassigned to 5 - 2 = 3

=end