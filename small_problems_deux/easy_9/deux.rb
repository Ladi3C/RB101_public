=begin
Problem:
        A double number 
        is a number with an even number of digits 
        whose left-side digits are exactly the same as its right-side digits. 

        For example, 44, 3333, 103103, 7676 are all double numbers. 
        444, 334433, and 107 are not.

        Write a method 
        that returns 
        2 times the number provided as an argument, 
        unless the argument is a double number; 
        double numbers should be returned as-is.
Example:
        twice(37) == 74
        twice(44) == 44
        twice(334433) == 668866
        twice(444) == 888
        twice(107) == 214
        twice(103103) == 103103
        twice(3333) == 3333
        twice(7676) == 7676
        twice(123_456_789_123_456_789) == 123_456_789_123_456_789
        twice(5) == 10
Data Structure:
        Input : Integer
        Output: Integer
Algorithm:
        - first check to see if a number is a doubled number?
        - create a method that checks if a number is a doubled number
          - convert the number to strings
          - if string length even, check to see if the first half is equal to the second
            if it is then return true 


        - if its not then multiply the number times two
Code:
=end

def doubled_number?(number)
  number_array = number.to_s.chars
  middle_index = number_array.size/2 - 1
  number_array.size.even? && number_array[0..middle_index] == number_array[(middle_index + 1)..-1]
end

# p doubled_number?(37) #== 74
# p doubled_number?(44) #== 44            TRUE
# p doubled_number?(334433) #== 668866
# p doubled_number?(444) #== 888
# p doubled_number?(107) #== 214
# p doubled_number?(103103) #== 103103    TRUE
# p doubled_number?(3333) #== 334433      TRUE
# p doubled_number?(7676) #== 7676        TRUE
# p doubled_number?(123_456_789_123_456_789) #== 123_456_789_123_456_789  TRUE
# p doubled_number?(5) #== 10

def twice(num)
  if doubled_number?(num)
    num
  else
    num * 2
  end 
end

p twice(37) #== 74
p twice(44) #== 44
p twice(334433) #== 668866
p twice(444) #== 888
p twice(107) #== 214
p twice(103103) #== 103103
p twice(3333) #== 3333
p twice(7676) #== 7676
p twice(123_456_789_123_456_789) #== 123_456_789_123_456_789
p twice(5) #== 10

p twice(37) == 74
p twice(44) == 44
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10