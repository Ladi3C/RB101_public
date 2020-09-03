# Inner scope variables cannot be accessed in outer scope.

loop do
  b = 1
  break
end 

puts b