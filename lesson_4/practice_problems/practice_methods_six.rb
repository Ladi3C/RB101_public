=begin
Problem: What is the return value of the following statement? Why?

okay, lets read this from left to right.
we have an array
we call pop on that array, which returns and removes the last element in the array
now what is it calling size on? What is left of the array or what pop has removed and returned?
I am gonna go with my intestines here say the array. so the return value is 2.

and i was WRONG!!!!!

its returning the length of what was popped which is 'caterpillar"' => 11 
mAN!


=end


p ['ant', 'bear', 'caterpillar'].pop.size