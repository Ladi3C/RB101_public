=begin
Problem: 
        Write a method that takes a year as input 
        and returns the century. 
        The return value should be a string that begins with the century number,
        and ends with st, nd, rd, or th as appropriate for that number.

        New centuries begin in years that end with 01. 
        So, the years 1901-2000 comprise the 20th century.
Example: 
        century(2000) == '20th'
        century(2001) == '21st'
        century(1965) == '20th'
        century(256) == '3rd'
        century(5) == '1st'
        century(10103) == '102nd'
        century(1052) == '11th'
        century(1127) == '12th'
        century(11201) == '113th'
Data Structure:
        Input: Integers
        Output: String
Algorithm:
        - 0 --- th   
        - 1 --- st   - 11--- th
        - 2 --- nd   - 12--- th
        - 3 --- rd   - 13--- th
        - 4 --- th
        - 5 --- th
        - 6 --- th
        - 7 --- th
        - 8 --- th
        - 9 --- th
        - 11--- th
        - 12--- th
        - 13--- th
=end

def century_suffix!(num_str)
  if num_str.end_with?("11", '12', '13')
    num_str << 'th'
  elsif num_str.end_with?('1')
    num_str << 'st'
  elsif num_str.end_with?('2')
    num_str << 'nd'
  elsif num_str.end_with?('3')
    num_str << 'rd'
  else 
    num_str << 'th'
  end
end  

# p century_suffix!("20")
# p century_suffix!('1')
# p century_suffix!("12")

def century(year)
century_str = ''
  if year % 10 == 0
    century_str << (year / 100).to_s
  else
    century_str << ((year / 100) + 1).to_s  
  end
  century_suffix!(century_str)
end 

p century(2000) #== '20th'
p century(2001) #== '21st'
p century(1965) #== '20th'
p century(256) #== '3rd'
p century(5) #== '1st'
p century(10103) #== '102nd'
p century(1052) #== '11th'
p century(1127) #== '12th'
p century(11201) #== '113th'

p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'