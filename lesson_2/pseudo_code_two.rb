=begin

create a method 
takes an array of strings
returns a string that is all those strings concatinated together


START

define a method 
Set a parameter of an array of strings
Return a string that concatenated all those strings together

END

=end

def together(strings)
  strings.join('')
end

p together(['Hi', 'my', 'name', 'is', 'Yuki!'])