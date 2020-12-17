=begin
Problem: 
        Write a method 
        that determines the mean (average) 
        of the three scores passed to it, 
        and returns 
        the letter value associated with that grade.
        
        Tested values are all between 0 and 100. 
        There is no need to check for negative values or values greater than 100.
        
        Numerical Score Letter  Grade
          90 <= score <= 100  'A'
          80 <= score < 90  'B'
          70 <= score < 80  'C'
          60 <= score < 70  'D'
          0 <= score < 60 'F'
Example:
        get_grade(95, 90, 93) == "A"
        get_grade(50, 50, 95) == "D"
Data Structure:
        Input: three integers
        Output: string 
Algorithm:

        - set a case or conditional statement 

Code:
=end

GRADE = {
  'A' => (90..100).to_a ,
  'B' => (80...90).to_a,
  'C' => (70...80).to_a,
  'D' => (60...70).to_a,
  'F' => (0...60).to_a 
}

def get_grade(num1, num2, num3)
  mean = (num1 + num2 + num3) / 3
  case 
  when mean.between?(90, 100) then "A"
  when mean.between?(80, 89)  then "B"
  when mean.between?(70, 79)  then "C"
  when mean.between?(60, 69)  then "D"
  else                             "F"
  end 
end 

p get_grade(95, 90, 93) #== "A"
p get_grade(50, 50, 95) #== "D"
p get_grade(50, 52, 34)
