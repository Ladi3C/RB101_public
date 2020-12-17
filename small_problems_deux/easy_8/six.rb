=begin
Problem:
        Write a method
        that takes two arguments: 
        the first is the starting number, 
        and the second is the ending number. 

        Print out all numbers between the two numbers, 

        except if a number is divisible by 3, 
        print "Fizz", 

        if a number is divisible by 5, 
        print "Buzz", and 

        finally if a number is divisible by 3 and 5, 
        print "FizzBuzz".


Example:


fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz

Data Structure:
        Input : two integers
        Output: Output to the screen 
Algorithm:
        - write method fizzbuzz that takes two parameters: starting_num, ending_num
        - create an empty array that will hold everything that needs to be output to the screen
          - with iteration later
        - create an array with all the numbers between the starting_num and ending_num
        - iterate through that array and create a conditional that will 
          - push a number, fizz, buzz, or fizzbuzz to the empty array
        - iterate through the final result array and output each value at each index
Code:
=end 

def fizzbuzz_value(starting_num, ending_num)
  value_arr = []
  numbers = (starting_num..ending_num).to_a
  numbers.each do |num|
    if num % 3 == 0 && num % 5 == 0
      value_arr << "FizzBuzz"
    elsif num % 3 == 0
      value_arr << "Fizz"
    elsif num % 5 == 0
      value_arr << "Buzz"
    else
     value_arr << num
    end
  end
  value_arr
end

def fizzbuzz(starting_num, ending_num)
  fizzbuzz_arr = fizzbuzz_value(starting_num, ending_num)
  puts fizzbuzz_arr.join(', ')
end

fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz








