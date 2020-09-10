=begin

Problem: What is the return value of reject in the following code? Why?

Answer : #reject returns values that are falsey. since we are invoking the
         puts method which will return nil as the last line evaluated, 
         the return value should be => [1, 2, 3] because all the elements
         in the array are falsey due to the puts method. Returns a new array with 
         original elements of the first. 
=end

