=begin
Problem:
        Write a method 
        that computes the difference 
        between 
        the square of the sum of the first n positive integers 

        and the sum of the squares of the first n positive integers.

Example:
        sum_square_difference(3) == 22
        # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
                36          -   14


        sum_square_difference(10) == 2640
        sum_square_difference(1) == 0
        sum_square_difference(100) == 25164150
Data Structure:
        Input : integer
        Output: integer
Algorithm:
        
        - find all the numbers that lead up to the given number
        - put them all in an array held in variable `sequence`
        
        
        - add up all the integers in the sequence and multiply it by itself and save it to `sum squared`
        - mutiply each integer in the array by itself and add it up save it into 'squared sum'
        - subtract sum squared - squared sum and return that number

=end

def get_sequence(integer)
  sequence = []
  1.upto(integer) { |num| sequence << num }
  sequence
end

def sum_square_difference(integer)
  sequence = get_sequence(integer)
  sum_squared = sequence.inject(:+) * sequence.inject(:+)
  squared_sum = sequence.map { |num| num * num}.inject(:+)
  sum_squared - squared_sum 
end

p sum_square_difference(3) #== 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
p sum_square_difference(10) #== 2640
p sum_square_difference(1) #== 0
p sum_square_difference(100) #== 25164150


p sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150
