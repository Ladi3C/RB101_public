=begin

Problems:   Write a method that takes one argument, a positive integer, and 
            returns a string of alternating 1s and 0s, always starting with 1. 
            The length of the string should match the given integer.

Example:    puts stringy(6) == '101010'
            puts stringy(9) == '101010101'
            puts stringy(4) == '1010'
            puts stringy(7) == '1010101'

Rules:      Write a method 
            Takes one argument, an integer
            returns a string of alternation 1 and 0
            Must start with 1
            length MUST match the given integer

Algorithm:

- Define method stringy
- Initialize num as parameter
- loop through each number somehow
- work with indices
- if indice even puts '1'
- if indice odd  puts '0'
- break if indice == string ?
=end

def stringy(num)
  counter = 1
  arr = []
  loop do 
    arr << counter
    counter +=1
    break if counter > num
  end

   num_arr = []
   counter = 0
   loop do

    if arr[counter].odd?
      num_arr << '1'
    else 
      num_arr << '0'
    end 
    counter += 1
   break if counter == arr.size
   
 end 

  num_arr.join  
end

puts stringy(6) #== '101010'
puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'