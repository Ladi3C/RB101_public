=begin

Problem: The Ruby Array class has several methods for removing items from the array. 
         Two of them have very similar names. Let's see how they differ:

         What do the following method calls do 
         (assume we reset numbers to the original array between method calls)?

Answer: 1) The delete_at deletes at the index the argument is given on the array object.
        2 will be returned
        output [1, 3, 4, 5]

        2) The delete method will delete the argument itself.
        return 1
        output [2, 3, 4, 5]
=end 

# numbers = [1, 2, 3, 4, 5]
# p numbers.delete_at(1)
# p numbers

numbers = [1, 2, 3, 4, 5]
p numbers.delete(1)
p numbers