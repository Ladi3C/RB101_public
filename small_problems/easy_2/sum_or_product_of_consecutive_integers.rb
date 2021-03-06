=begin

Problem: 

        Write a program that asks the user to enter an integer greater than 0,
        
        then asks if the user wants to determine the sum or product of all numbers 
        
        between 1 and the entered integer.
=end

puts ">> Please enter an integer greater than 0:"
integer = gets.chomp.to_i

puts ">> Enter 's' to compute the sum, 'p' to compute the product."
compute = gets.chomp

arr = []
counter = 1
  
  loop do
    arr << counter
    counter += 1
      
    break if counter > integer
  end
    
    if compute == 's'
      sum = arr.reduce(:+) 
      puts "The sum of the integers between 1 and #{integer} is #{sum}."
    else compute == 'p'
      product = arr.reduce(:*)
      puts "The product of the integers between 1 and #{integer} is #{product}"
    end 
  
