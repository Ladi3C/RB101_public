=begin
Problem:
        A triangle is classified as follows:

        right   :    One angle  is 90 degrees
        acute   :    All 3 angles < 90 degrees
        obtuse  :    One angle > 90 degrees.

        valid triangle :  sum == 180 degrees
                          all angles > 0

                          if either of these conditions is not satisfied, 
                          the triangle is invalid.

        Write a method 
        that takes the 3 angles of a triangle as arguments, 
        and returns a symbol 
        :right, 
        :acute, 
        :obtuse, or 
        :invalid
        
        You may assume integer valued angles so you don't have to worry about floating point errors. 
        You may also assume that the arguments are specified in degrees.
Data Structure:
        Input : Three integers
        Output: Symbol
Algorithm:
        - first determine if the three integers are valid triangles
          - create method `triangle?` with three integers as its parameters
            - return true of sum of all sides is 180 and if all angles are greater then zero
            - return :invalid if either conditions are not met
        - create method `triangle` with `side1`, `side2`, `side3` as its parameters
          - put all parameters in an array variable `sides`
            - iterage through sides and return :right if any sides are 90
            - if all three sides are less then 90 return :acute
            - if one angle is greather than 90 return :obtuse
=end

def triangle?(side1, side2, side3)
  sides = [side1, side2, side3]
  return true if sides.inject(:+) == 180 && sides.all? { |side| side > 0 }
  :invalid
end

def triangle(side1, side2, side3)
  sides = [side1, side2, side3]
  if triangle?(side1, side2, side3) == :invalid
    :invalid
  else
    if sides.any?(90)
      :right
    elsif sides.all? { |side| side < 90}
      :acute
    elsif sides.any? { |side| side > 90}
      :obtuse
    end
  end

end

p triangle(60, 70, 50) #== :acute
p triangle(30, 90, 60) #== :right
p triangle(120, 50, 10)# == :obtuse
p triangle(0, 90, 90)  # == :invalid
p triangle(50, 50, 50) #== :invalid

p triangle(60, 70, 50) == :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid



