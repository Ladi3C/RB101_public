=begin

Problem: Describe the difference between ! and ? in Ruby. 

! is a bang suffix, it will mutate the caller.
? is a validity reference, used to validate the given criteria.

And explain what would happen in the following scenarios:

1) what is != and where should you use it?

Not equal to. Can be used in conditional statements. 

2) put ! before something, like !user_name

That means NOT user_name. Its to call the opposite of an object. 

3) put ! after something, like words.uniq!

That mutates the caller, it is a bang suffix. 

4) put ? before something

Im unsure.. perhaps it is the argument we are trying to validate.

5) put ? after something

method to validate an object

6) put !! before something, like !!user_name

that returns the same boolean it was called on. 

=end