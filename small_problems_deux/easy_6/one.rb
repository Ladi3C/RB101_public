=begin
Problem:
        Write a method 
        that takes a floating point number 
        that represents an angle between 0 and 360 degrees 
        and returns a String 
        that represents that angle 
        in degrees, minutes and seconds. 

        You should use a degree symbol (°) to represent degrees, 
        a single quote (') to represent minutes, 
        and a double quote (") to represent seconds. 

        A degree has 60 minutes, 
        while a minute has 60 seconds.
Example:
        dms(30) == %(30°00'00")
        dms(76.73) == %(76°43'48")
        dms(254.6) == %(254°36'00")
        dms(93.034773) == %(93°02'05")
        dms(0) == %(0°00'00")
        dms(360) == %(360°00'00") || dms(360) == %(0°00'00")
Data Structure:
        Input:  Integer/Float
        Output: String
Algorithm:
        - find out how to calculate mintues and seconds given the float number
          - degrees : use the whole number part of the decimal
          - minutes : multiply the remaining decimal by 60, use the whole number part for minutes
          - seconds : multiply the remaining decimal by 60 

        - how to find a whole number
          (num * 10) % 10 == 0

code:
=end

DEGREE = "\xC2\xB0"
#  

def dms(floating_point)
  if (floating_point * 10) % 10 == 0
    "%(#{floating_point}#{DEGREE}00'00)"
  end
end

p dms(30) #== %(30°00'00")
                #%(30°00'00")


# %(30°00'00")