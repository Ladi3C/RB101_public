=begin

Problem: Create a method called multiply that can take an additional argument
         to determine the transformation criteria. (double the argument by two)

Input:   an array, an integer

Output:  an array 

Rules : 
    Explicit:  - ONLY double the number in the array that is given in the argument (second parameter)

Test Cases: 
            my_numbers = [1, 4, 3, 7, 2, 6]
            multiply(my_numbers, 3)
=end

def multiply(arr, number)
  multiplied_arr = []
  counter = 0

  loop do
    break if counter == arr.size

    current_number = arr[counter]
    multiplied_arr << current_number * number

    counter += 1

  end 

    multiplied_arr
end 

p my_numbers = [1, 4, 3, 7, 2, 6]
p multiply(my_numbers, 3)






# def multiply(arr, number)
#   multiplied_arr = []
#   counter = 0

#   loop do
#     break if counter == arr.size

#     current_number = arr[counter]
    
#     if current_number == number
#       multiplied_arr << current_number *  2
#     else 
#       multiplied_arr << current_number
#     end 

#     counter += 1

#   end 

#     multiplied_arr
# end 

# p my_numbers = [1, 4, 3, 7, 2, 6]
# # p multiply(my_numbers, 3)


