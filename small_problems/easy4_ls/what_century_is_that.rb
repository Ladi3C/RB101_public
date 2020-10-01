=begin

Problem: 

          Write a method that takes a year as input and returns the century. 
          The return value should be a string that begins with the century number, 
          and ends with st, nd, rd, or th as appropriate for that number.

***       New centuries begin in years that end with 01. So, the years 1901-2000 comprise 
          the 20th century.

Input : Integers
Output: string    Begins with century number, ends with ST ND RD TH for appropriate number

Pseudo Code:  - Define method century
              - Initialize variable YEAR as a parameter
              - Find a way to calculate the century
                - convert it to a string 
                - make sure to go over edgecases
              - Find a way to add a suffix at the end of the century

=end

def century(year)
 if year % 100 == 0
  century_num = year/100
 else 
  century_num = year/100 + 1
 end
 century_num.to_s + century_suffix(century_num)
end 

def century_suffix(century)
return 'th' if [11, 12, 13].include?(century % 100)
last_digit = century % 10

case last_digit
when 1 then 'st'
when 2 then 'nd'
when 3 then 'rd'
else 'th'
end 

end  



p century(2000) #== '20th'
p century(2001) #== '21st'
p century(1965) #== '20th'
p century(256)  #== '3rd'
p century(5) #== '1st'
p century(10103) #== '102nd'
p century(1052) #== '11th'
p century(1127) #== '12th'
p century(11201) #== '113th'