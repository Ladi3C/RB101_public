answer = 42

def mess_with_it(some_number)
  some_number += 8
end 

new_answer = mess_with_it(answer)

p answer - 8

=begin

Because execution begins on line 9, the output of the following code is 34.
Notice that numbers are immutable; therefor line 9 is referencing line 1 
where local variable answer is initialized. We arent doing anyting with the code
on line 7, if we were to output it to the screen, answer would be passed into the
method mess_with_it as an argument. But the local variable answer remains unchanged. 

=end