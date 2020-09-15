my_arr = 

[[18, 7], [3, 12]].each do |arr|
  arr.each do |num|
    if num > 5
      puts num
    end
  end
end 

=begin

On line 1 we are initialized local variable my_arr to hold the return value of this entire peice of code.
The Array#each method is being called on a multi-dimensional array, and each inner array is being passed
on to block paramenter arr.  the Array#each method is being called on each inner array as well. 

[[18, 7],  

[3, 12]]

The if conditional statement on line 3 invoking the puts method on any number greater than 5.
The output should be a string representation of 18, 7, and 12, respectively. Puts on line 6
is the last line evaluated,which has a return value of nil for that block. the return value of the
arr block is also nil, but each doesnt do anything with the return value so although the output is'
  18
  7
  12

  the return value is the orginal array = [[18, 7], [3, 12]]

=end