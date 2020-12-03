=begin
If we want loop to iterate more than once, we can use a conditional statement
 so that break is only called when a specific condition occurs. 

 For example, 
 let's say we have a variable named number that represents a random number. 
 We can choose to exit the loop when number equals 5 by writing the if condition 
 as number == 5.
=end

loop do
  number = rand(1..10)
  puts number
  puts "hello"
  if number == 5
    puts "Exciting..."
  break
  end 
end 