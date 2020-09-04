=begin

Problem:  Write a method that takes two arguments, a string and a positive integer, 
          and prints the string as many times as the integer indicates.

Example/Test Cases:  repeat('Hello', 3)

Input:    parameter/argument:   string    postive integer

Output:   string i.e  Hello
                      Hello
                      Hello   
___

Edge: 

Hello
Hello
Hello

the string 'Hello' is print on an new line for the amoung of second argument given

___

Rules:    write method 'repeat'
          two arguments : string & POSITIVE integer
          prints string times the integer arguemnt given 

Data Structure / Algorith:

define method repeat with two arguments (string, integer)
set a counter
create a loop
output the string
breaks once the counter has reached the integer given

=end

def repeat(string, integer)
  counter = 0

  loop do
    puts string 
    counter += 1
    break if counter == integer
  end 
end

repeat('Hello', 6)
