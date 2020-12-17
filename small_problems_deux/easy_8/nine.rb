=begin
Problem:
        Write a method 
        that takes a positive integer 
        as an argument 

        and returns that number 
        with its digits reversed. 
Examples:
        reversed_number(12345) == 54321
        reversed_number(12213) == 31221
        reversed_number(456) == 654
        reversed_number(12000) == 21 # No leading zeros in return value!
        reversed_number(12003) == 30021
        reversed_number(1) == 1

=end

# def reversed_number(digits)
#   digits.digits.map(&:to_s).join.to_i
# end

def reversed_number(digits)
  number = digits.to_s.chars
  reversed_arr = []
  counter = 0
  loop do
    reversed_arr.unshift(number[counter])

    counter += 1
    break if counter == number.size
  end
  reversed_arr.join.to_i
end

p reversed_number(12345) #== 54321
p reversed_number(12213) #== 31221
p reversed_number(456) #== 654
p reversed_number(12000) #== 21 # No leading zeros in return value!
p reversed_number(12003) #== 30021
p reversed_number(1) #== 1

p reversed_number(12345) == 54321
p reversed_number(12213) == 31221
p reversed_number(456) == 654
p reversed_number(12000) == 21 # No leading zeros in return value!
p reversed_number(12003) == 30021
p reversed_number(1) == 1