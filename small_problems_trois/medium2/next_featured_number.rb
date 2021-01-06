=begin
Problem:
        A featured number 
        (something unique to this exercise) 
        is an odd number 
        that is a multiple of 7, 
        and whose digits occur exactly once each. 

        So, for example, 49 is a featured number, 
        but 98 is not (it is not odd), 97 is not (it is not a multiple of 7), 
        and 133 is not (the digit 3 appears twice).

        Write a method 
        that takes a single integer as an argument, 
        and returns the next featured number that is greater than the argument. 
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
Algorithm:
        - create method `double_number?` with `number` as its parameter
          - put the number in an array 
          - check to see if any equal each other, if they do return true
        - create method `featured` with `num` as its parameter
        - create `max` variable and assign it to : 9999999999 
        - iterate through `num` plus one up to `max` and return the number that
          - is a multiple of 7 
          - is odd
          - does not have a double number by passing the number to `double_number?`
            - if `double_number` is true then keep looking
=end

def double_number?(number)
  num_arr = number.to_s.chars.map(&:to_i)
  num_arr.any? { |num| num_arr.count(num) > 1}
end

def featured(starting_num)
  max = 9999999999
  return "There is no possible number that fullfills those requirements" if starting_num == max
  (starting_num + 1).upto(max) do |num|
    return num if num % 7 == 0 && num.odd? && !double_number?(num)
  end
end

p featured(12) #== 21
p featured(20) #== 21
p featured(21) #== 35
p featured(997) #== 1029
p featured(1029) #== 1043
p featured(999_999) #== 1_023_547
p featured(999_999_987) #== 1_023_456_987

p featured(9_999_999_999) # -> There is no possible number that fulfills those requirements

# p featured(12) == 21
# p featured(20) == 21
# p featured(21) == 35
# p featured(997) == 1029
# p featured(1029) == 1043
# p featured(999_999) == 1_023_547
# p featured(999_999_987) == 1_023_456_987

# p featured(9_999_999_999) # -> There is no possible number that fulfills those requirements