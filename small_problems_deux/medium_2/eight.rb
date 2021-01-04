=begin
Problem:
        A featured number (something unique to this exercise) 
        is an odd number that is a multiple of 7, 
        and whose digits occur exactly once each. 

        So, for example, 49 is a featured number, 
        but 98 is not (it is not odd), 
        97 is not (it is not a multiple of 7), 
        and 133 is not (the digit 3 appears twice).

        Write a method 
        that takes a single integer as an argument, 
        and returns the next featured number 
        that is greater than the argument. 
        Return an error message if there is no next featured number.

Example:
        featured(12) == 21
        featured(20) == 21
        featured(21) == 35
        featured(997) == 1029
        featured(1029) == 1043
        featured(999_999) == 1_023_547
        featured(999_999_987) == 1_023_456_987

        featured(9_999_999_999) # -> There is no possible number that fulfills those requirements
Data Structure:
        Input : integer
        Output: integer

Task: find the next bigger number that is 

        - featured number :   ODD   &   multiple of 7   &   number occurs once
        
Algorithm:
          - create the method featured with parameter integer
          -  



def double_number?(integer)
  integer.digits.uniq.length == integer.digits.length
end

double_number?(1001)
double_number?(23) 

def featured(integer)
  max = 9999999999
  return "ERROR" if integer == max
  result = 0
  (integer + 1..max).find do |num|
    if num % 7 == 0 && num.odd? && double_number?(num)
      result += num
    end 
  end 
result
end
=end
def double_number?(integer)
  funzies = integer.digits
  funzies.uniq.length == funzies.length
end

double_number?(1001)
double_number?(23) 

def featured(integer)
  max = 9999999999
  return "ERROR" if integer == max
  result = 0
  (integer + 1..max).find do |num|
    if num % 7 == 0 && num.odd? && double_number?(num)
      result = num
    end 
  end 
  result
end

p featured(12) #== 21
p featured(20) #== 21
p featured(21) #== 35
p featured(997)# == 1029
p featured(1029) #== 1043
p featured(999_999) #== 1_023_547
p featured(999_999_987) #== 1_023_456_987
# p featured(9_999_999_999)


# p featured(12) == 21
# p featured(20) == 21
# p featured(21) == 35
# p featured(997) == 1029
# p featured(1029) == 1043
# p featured(999_999) == 1_023_547
# p featured(999_999_987) == 1_023_456_987
# p featured(9_999_999_999)