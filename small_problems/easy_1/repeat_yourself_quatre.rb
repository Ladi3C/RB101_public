=begin

Problem: 

      Write a method that takes two arguments, a string and a positive integer, and prints 
      the string as many times as the integer indicates.  
Example: 

      repeat('Hello', 3)
      Hello
      Hello
      Hello
Algorithm:

- Define method repeat
- two arguments :
                  string
                  positive integer
=end

# def repeat(string, num)
#   counter = 0
  
#   loop do
#     break if counter == num

#     puts string
#     counter += 1
#   end 
# end 

def repeat(string, num)
  num.times do 
    puts string
  end 
end 
repeat("Carolina", 6)