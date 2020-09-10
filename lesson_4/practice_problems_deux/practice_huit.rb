=begin

Problem: How does take work? Is it destructive? How can we find out?

Answer : We can find out by looking at ruby docs, take under the array class. 
         According to ruby docs, take returns the frist elements in the array for which the integer
         of the argument is given. it works from left to right.
         Given this information the return value of arr should be => [1, 2]
         Important to note that #take is not destructive. 
=end

arr = [1, 2, 3, 4, 5]
arr.take(2)