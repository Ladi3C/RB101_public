a = 2
b = [5, 8]
arr = [a, b]

arr[0] += 2
arr[1][0] -= a

p a
p b
p arr 


=begin

on line 1, local variable a is initialized, pointing to an integert object in memory
  with a value of 2.
on line 2, local variable b is initialized, pointing to an array object with two elements,
  integers 5, and 8
on line 3, local variable arr is initialized, pointing to the value of a and b. 

on line 5 local variable arr is being REASSIGNED to what a is pointing to + 2
  now arr is [4 [5, 8]]
      a is still 2 because on line 5, REASSIGMNET has occured NOT MUTATION!

on line 6, arr is first referencing the object in index 1, which is [5. 8]
  Then it is pointing to index 0 which is 5 and is subtracting the value of a which is 2
  now [5, 8] is [3, 8]. This is no longer reassignment, this is mutating the array because we are
  calling [] = to an array which  may look like REASSIGNMENT but it is actually a mutation. 

  when we puts a => 2
          puts b => [3, 8]
          puts arr => [4, [3, 8]]
=end