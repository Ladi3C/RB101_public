a = 2
b = [5, 8]
arr = [a, b]

arr[0] += 2
arr[1][0] -= a
 p a
 p b
 p arr
=begin
What are the final values of a and b?

on line 1, local variable a is initialized to an integer object, 
       => 2
on line 2, local variable b is initialized to an array object, containing two elements 
       => [5, 8]
on line 3, local variable arr is inititalized to an array object containing two elements
       => [a, b] => [2, [5, 8]]
on line 5, local variable arr index 0 is REASSIGNED to 2 + 2
      - arr = [4, [5, ,8]]
      - so now a has been REASSIGNED to 4
on line 6 local variagble arr index 1 ([5, 8], in index 0 (5) is REASSIGNED to 5 - 2 == 3)
      - arr = [4, [3, 8]]
      - so now b hjas been REASSIGNED to 3

the final values of a is 4 and b is 3
=end

# WRONG!!!!!!!