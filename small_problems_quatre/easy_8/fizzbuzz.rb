=begin
Problem:
      Write a method 
      that takes two arguments: 
      the first is the starting number, 
      and the second is the ending number. 

      Print out all numbers between the two numbers, 

      except if a number is divisible by 3, print "Fizz", 
      if a number is divisible by 5, print "Buzz", 
      and finally if a number is divisible by 3 and 5, print "FizzBuzz".
=end

def fizzbuzz_value(element)
  if element % 3 == 0 && element % 5 == 0 
    'FizzBuzz'
  elsif element % 3 == 0
    'Fizz'
  elsif element % 5 == 0
    'Buzz'
  else
    element
  end
end

def fizzbuzz(starting, ending)
  result = []
  starting.upto(ending) do |element|
    result << fizzbuzz_value(element)
  end
  puts result.join(',')
end


p fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz

