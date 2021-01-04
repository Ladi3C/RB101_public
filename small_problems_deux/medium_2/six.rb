=begin
Problem:
        A triangle is classified as follows:

        right :     One angle of the triangle is a right angle (90 degrees)
        acute :     All 3 angles of the triangle are less than 90 degrees
        obtuse:     One angle is greater than 90 degrees.
        

        To be a valid triangle, 
        the sum of the angles must be exactly 180 degrees, 
        and all angles must be greater than 0: 

        if either of these conditions is not satisfied, 
        the triangle is invalid.

        Write a method 
        that takes the 3 angles of a triangle as arguments, 
        and returns a symbol 

        :right, :acute, :obtuse, or :invalid 

        depending on whether the triangle is a right, acute, obtuse, or invalid triangle.

        You may assume integer valued angles so you don't have to worry about floating point errors. 
        You may also assume that the arguments are specified in degrees.
Example:
        triangle(60, 70, 50) == :acute
        triangle(30, 90, 60) == :right
        triangle(120, 50, 10) == :obtuse
        triangle(0, 90, 90) == :invalid
        triangle(50, 50, 50) == :invalid
Data Structure:
        Input : 3 integers
        Output: symbol        :acute    :right    :obtuse   :invalid

Algorithm:
        - create triangle method with parameters a, b, and c
            - first validate if the three integers create a triangle
              - create a separate method called valid_triangle?
              - put a, b and c in a array and add them up
              - if they do not equal 180 return false
              - if any integer is equal to 0 return false
        - in the triangle method
              - call validate triangle if false return :invalid
              - put a b and c in an array num_arr
              - conditional branch
                - if any of the integers in num_arr equals to 90     return :right      #any?
                - if all of the integers in num_arr are less than 90 return :acute      #all?
                - if any of the integers in num_arr are more than 90 return :obtuse     #any?
=end

def valid_triangle?(a, b, c)
  return false if [a, b, c].any? { |num| num == 0 }
  [a, b, c].inject(:+) == 180
end

# p valid_triangle?(0, 90, 90)
# p valid_triangle?(50, 50, 50)
# p valid_triangle?(30, 90, 60)

def triangle(a, b, c)
  return :invalid if valid_triangle?(a, b, c) == false
  num_arr = [a, b, c]
  if num_arr.any?(90)
    :right
  elsif num_arr.all? { |num| num < 90 }
    :acute
  elsif num_arr.any? { |num| num > 90}
    :obtuse
  end
end



p triangle(60, 70, 50) #== :acute
p triangle(30, 90, 60) #== :right
p triangle(120, 50, 10) #== :obtuse
p triangle(0, 90, 90) #== :invalid
p triangle(50, 50, 50) #== :invalid

p triangle(60, 70, 50) == :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid

























