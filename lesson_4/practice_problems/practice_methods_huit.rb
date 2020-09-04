=begin
Problem:  How does take work? Is it destructive? How can we find out?

We can find out through looking at ruby documentation and irb testing!
array#take works by returning the first number of elements given. 
Here we are give an array, and its asking us to return the first two elements
=> [1, 2]
Lets find out if its destructive...irb testing testing

We were correct in what it returns and it is NOT destructive :) hawaii five !

=end


arr = [1, 2, 3, 4, 5]
arr.take(2)