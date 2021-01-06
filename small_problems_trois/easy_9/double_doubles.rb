=begin
Problem:
        A double number is a number 
        with an even number of digits 
        whose left-side digits are exactly the same as its right-side digits. 

        For example, 44, 3333, 103103, 7676 are all double numbers. 444, 334433, and 107 are not.

        Write a method 
        that returns 2 times the number provided as an argument, 

        unless the argument is a double number; double numbers should be returned as-is.
Algorithm:
        - first create a `doubled_number?` method that accepts `digits` as its parameter.
          - doubled numbers from the definition above are always even in length. 
          - convert the digits to strings, to an array and back to integers so it could
            result in the digits converted to an array and save that to `digit_arr`
          - then we will compare indices by :
            - find the middle index of `digit_arr` and compare the first half of the arr to the second
            - if they are the same the method will return true
        - second create the `twice` method and accept  `integer` as its parameter
          - create a conditional statement if the `digit_arr` method returns when `integer` is passed into it
            then return `integer` 
          - otherwise multiply integer times 2

=end

def double_number?(digits)
  digit = digits.to_s.chars.map(&:to_i)
  if digit.size.even?
    middle = digit.size/2 - 1
    digit[0..middle] == digit[middle + 1..-1]
  else
    false
  end 
end

def twice(integer)
  double_number?(integer) ? integer : integer * 2
end


#p double_number?(37) #false
# p double_number?(44) #true
# p double_number?(334433) #false
# p double_number?(103103) #true
# p double_number?(444) #false

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


