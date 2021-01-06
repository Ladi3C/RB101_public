=begin
Problem:
        A triangle is classified as follows:
          equilateral :    All 3 sides are of equal length
          isosceles   :    2 sides are of equal length       while the 3rd is different
          scalene     :    All 3 sides are of different length

        To be a valid triangle, 
        the sum of the lengths of the two shortest sides must be greater than the length of the longest side, 
        and all sides must have lengths greater than 0: 

        if either of these conditions is not satisfied, the triangle is invalid.

        Write a method that 
        takes the lengths of the 3 sides of a triangle as arguments, 
        and returns a symbol 
        :equilateral, 
        :isosceles, 
        :scalene, 
        or :invalid 
        depending on whether the triangle is equilateral, isosceles, scalene, or invalid.
Data Structure:
        Input : three integers
        Output: symbol
Algorithm:
        - FIRST figure out if all three integers given are a triangle
          - create method `triangle?` with three integers as parameters
          - check if all integers are greater than zero
          - find the two smallest integers
          - find the largest integer
          - add the two smallest if its greater than the largest it is a triangle.
          - return :invalid if any of these conditions are not met.
        - create method `triangle` with three integers as its parameter
          - all three sides are equal (use comparison)
            - return equilateral
          - two sides are equal and ine is differenct
            - isosceles
          - all three sides are different
            - scalene
=end
# def calculate_sides(n1, n2, n3)
#   sides = [n1, n2, n3]
#   max = sides.max
#   first_idx = sides.index(max)
#   sides.delete_at(first_idx)
#   [sides, max]
# end

# def triangle?(n1, n2, n3)
#   sides_ordered = calculate_sides(n1, n2, n3).flatten
#   return :invalid if sides_ordered.any?(0)
#   return :invalid if sides_ordered[0..1].sum < sides_ordered[2] 
# end

# def triangle(n1, n2, n3)

#   if triangle?(n1, n2, n3) == :invalid
#     :invalid
#   else
#     if n1 == n2 && n1 == n3
#       :equilateral
#     elsif n1 == n2 && n1 != n3 || n2 == n3 && n2 != n1
#       :isosceles
#     elsif n1 != n2 && n1 != n3
#       :scalene
#     end
#   end 
# end 

def triangle(n1, n2, n3)
  sides = [n1, n2, n3]
  largest_side = sides.max

  case
  when largest_side > sides.inject(:+) - largest_side, sides.include?(0)
    :invalid
  when n1 == n2 && n2 == n3
    :equilateral
  when n1 == n2 && n1 != n3 || n2 == n3 && n2 != n1
    :isosceles
  else
    :scalene
  end
end
p triangle(3, 3, 3)    # == :equilateral
p triangle(3, 3, 1.5)     #== :isosceles
p triangle(3, 4, 5)     #== :scalene
p triangle(0, 3, 3)     #== :invalid
p triangle(3, 1, 1)    # == :invalid


p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid