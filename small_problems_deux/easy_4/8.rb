def string_to_integer_array(string)
  integer_arr = string.chars.map do |char|
    case char
      when '0' then 0
      when '1' then 1
      when '2' then 2
      when '3' then 3
      when '4' then 4
      when '5' then 5
      when '6' then 6
      when '7' then 7
      when '8' then 8
      when '9' then 9
    end
  end
  integer_arr
end 

string_to_integer_array("4321")

def string_to_integer(integers)
   value = 0 # 4 #43 #432
   string_to_integer_array(integers).each { |num| value = 10 * value + num }
   value
end

def string_to_signed_integer(string)
  case string[0]
  when '-' then -string_to_integer(string[1..-1])
  when '+' then string_to_integer(string[1..-1])
  else          string_to_integer(string)
  end 
end 

p string_to_signed_integer('4321')
p string_to_signed_integer('-570')
p string_to_signed_integer('+100')