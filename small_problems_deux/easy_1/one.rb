=begin

Problem: 
          Write a method that takes two arguments, 
          a string and a positive integer, 
          and prints the string as many times as the integer indicates.

Example:  repeat('Hello', 3)
          Hello
          Hello
          Hello

Data Structure: 
                Input : string, integer
                Output: string
Algorithm:
            - define a method that takes two parameters: a string, an integer
            - use the times method or create a loop
            - that will output the string as many times as the integer 
Code:
=end

# using the #times method

# def repeat(str, number)
#   number.times { |num| puts str}
# end

#using a loop

def repeat(str, num)
  counter = 1
  
  loop do
    break if counter > num
    
    puts str

    counter += 1
  end
end

repeat('Hello', 3)