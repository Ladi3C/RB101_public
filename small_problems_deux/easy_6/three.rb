
=begin
Problem:
        Write a method 
        that calculates 
        and returns 
        the index of the first Fibonacci number 
        that has the number of digits specified as an argument. 
        (The first Fibonacci number has index 1.)




fibonacci sequence: sequence of numbers in which 
                    each number is the 
                    sum of the previous two numbers in the sequence.
                    example: 0,1,1,2,3,5,8,13,21,34 .......
Example:
                    find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
                    find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
                    find_fibonacci_index_by_length(10) == 45
                    find_fibonacci_index_by_length(100) == 476
                    find_fibonacci_index_by_length(1000) == 4782
                    find_fibonacci_index_by_length(10000) == 47847
Data Structure:
        Input : integer

        Output: integer
Algorithm: 
        - figure out how to calculate fibonacci numbers

=end

def fibonacci(number_digits)
  first = 1
  second = 1
  index = 2

  loop do
    index += 1
    fibonacci = first + second
    break if fibonacci.to_s.size >= number_digits

    first = second
    second = fibonacci
  end
  index 
end




find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
find_fibonacci_index_by_length(10) == 45
find_fibonacci_index_by_length(100) == 476
find_fibonacci_index_by_length(1000) == 4782
find_fibonacci_index_by_length(10000) == 47847