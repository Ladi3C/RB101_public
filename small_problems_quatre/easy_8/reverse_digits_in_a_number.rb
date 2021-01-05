=begin
Problem:
        Write a method 
        that takes a positive integer as an argument 
        and returns that number with its digits reversed. 
        Examples:
        Don't worry about arguments with leading zeros - 
        Ruby sees those as octal numbers, 
        which will cause confusing results. 
        For similar reasons, 
        the return value for our fourth example doesn't have any leading zeros.
Example:
        reversed_number(12345) == 54321
        reversed_number(12213) == 31221
        reversed_number(456) == 654
        reversed_number(12000) == 21 # No leading zeros in return value!
        reversed_number(12003) == 30021
        reversed_number(1) == 1
Data structure:
        Input : Integer
        Output: Integer

=end

def reversed_array(digits)
  result_array = []
  loop do
    digits, remainder = digits.divmod(10)
    result_array << remainder
    
    break if digits == 0
  end
  result_array 

end

def reversed_number(digits)
  result_array = reversed_array(digits)
  result = 0
  result_array.each do |num|
    result = 10 * result + num
  end
  result
end

p reversed_number(12345) #== 54321
p reversed_number(12213) #== 31221
p reversed_number(456)# == 654
p reversed_number(12000) #== 21 # No leading zeros in return value!
p reversed_number(12003)# == 30021
p reversed_number(1) #== 1

p reversed_number(12345) == 54321
p reversed_number(12213) == 31221
p reversed_number(456) == 654
p reversed_number(12000) == 21 # No leading zeros in return value!
p reversed_number(12003) == 30021
p reversed_number(1) == 1