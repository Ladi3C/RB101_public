=begin
Problem:
        A triangle is classified as follows:

        equilateral :   All 3 sides are of equal length
        isosceles   :   2 sides are of equal length, while the 3rd is different
        scalene     :   All 3 sides are of different length
        
        To be a valid triangle, 
        the sum of the lengths of the two shortest sides 
        must be greater than the length of the longest side, 

        and all sides must have lengths greater than 0: 
          if either of these conditions is not satisfied, the triangle is invalid.

        Write a method 
        that takes the lengths of the 3 sides of a triangle as arguments, 
        and returns a symbol 
        :equilateral, 
        :isosceles, 
        :scalene, 
        or :invalid 

        depending on whether the triangle is equilateral, isosceles, scalene, or invalid.

        - check to see if the triangle is valid
          - if any integers are equal to zero then return :invalid
        - find the greatest number
          - if the other two sides sum are not greater than the greatest number return :invalid
        - if all sides are equal return                           :equilateral
        - if two sides are equal and third is different return    :isosceles
        - if all three sides are different length return           :scalene
Example:
        triangle(3, 3, 3) == :equilateral       # All three sides are equal length
        triangle(3, 3, 1.5) == :isosceles       # 2 sides equal third is different
        triangle(3, 4, 5) == :scalene           # all 3 sides are different
        triangle(0, 3, 3) == :invalid           # one side is not greater than 0
        triangle(3, 1, 1) == :invalid           # the two smallest sides are NOT greater than the longest side
Data Structure:
        Input : three integers
        Output: symbol            :equilateral,   :isosceles,     :invalid
Algorithm:
        - create method triangle with parameters a, b, and c
        - if a b or c is equal to 0 return :invalid
        - find the greatest value, if the other two values are not greater than the greatest return invalid
          - how do i find the greatest value? #max
            - put a b c in an array and call #max 
            - add the two other variables and if they are not greater than max return :invalid 
        conditional branch
        - if all sides are equal return                           :equilateral
            - compare all sides to each other with shortcircuit operators
            - if equal return :equalaterial
        - if two sides are equal and third is different return    :isosceles
            - a == b && a != c || b == c && a != b
        - if all three sides are different length return           :scalene
            - a != b && b != c && a !=c 
=end

def triangle (a, b, c)
  num_arr = [a, b, c]
  longest_side = num_arr.max
  idx = num_arr.find_index(longest_side)
  num_arr.delete_at(idx)
  other_sides_sum = num_arr.inject(:+)
  
  return :invalid if [a, b, c].any? { |num| num == 0 }
  if other_sides_sum < longest_side
    :invalid
  elsif a == b && a != c || b == c && a != b
    :isosceles
  elsif a == b && b == c
    :equilateral
  elsif a != b && b != c && a !=c
    :scalene
  end 
end

p triangle(3, 3, 3) #== :equilateral
p triangle(3, 3, 1.5) #== :isosceles
p triangle(3, 4, 5) #== :scalene
p triangle(0, 3, 3) #== :invalid
p triangle(3, 1, 1) #== :invalid

p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid



# def triangle(a, b, c)
#   num_arr = [a, b, c]
#   max = num_arr.max
#   num_arr.delete(max)
#   return :invalid if num_arr.any? { |num| num == 0 }

#   if a == b && b == c 
#     :equilateral
#   elsif a == b && a != c || b == c && a != b
#     :isosceles
#   elsif a != b && b != c && a != c
#     :scalene
#   elsif num_arr.sum < max
#     :invalid
#   end 






















