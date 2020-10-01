array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = []
array1.each { |value| array2 << value }
array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
puts array2

=begin

Problem: 
      
        What will the following code print, and why? Don't run the code until you have tried to answer.

Answer: 

On line one, local variable array1 is initialized and assigned to an array that holds the value of 
8 string objects. 

=> array1 = ['Moe', 'Larry', 'Curly', 'Shemp', 'Harpo', 'Chico', 'Groucho', 'Zeppo']

On line 2, local variable array2 is initialized and assigned to an empty array.
On line 3, the Array#each method is being called on array 1. Each name is passed into
the parameter value, the block is pushing each name into array2. The block not only
pushes each name of arr1 into arr2, but it also returns the original array, array1, that it
was called on. 

array1 = ['Moe', 'Larry', 'Curly', 'Shemp', 'Harpo', 'Chico', 'Groucho', 'Zeppo']
array2 = ['Moe', 'Larry', 'Curly', 'Shemp', 'Harpo', 'Chico', 'Groucho', 'Zeppo']

=> RETURN VALUE: array1 = ['Moe', 'Larry', 'Curly', 'Shemp', 'Harpo', 'Chico', 'Groucho', 'Zeppo']

On line 4 the Array#each method is once again being called on the array1 array. and each name is passed
into the value paramter. The destructive version of upcase is then called on each value IF
the value starts with C or S.
so array1 now holds
=> array1 = ['Moe', 'Larry', 'CURLY', 'SHEMP', 'Harpo', 'CHICO', 'Groucho', 'Zeppo']
=> array2 = ['Moe', 'Larry', 'CURLY', 'SHEMP', 'Harpo', 'CHICO', 'Groucho', 'Zeppo']

SO when we call puts to array2, it should output what is on line 36. Reason being, we pushed values
from array 1 into array 2, they are both pointing to the same string objects. If we modify array1, we
will modify array2. 
=end