limit = 17

def fib(first_num, second_num, limit=15)
  while first_num + second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(0, 1)
puts "result is #{result}"

# Its very important to remember that methods are self-contained. In the original example,
#the local variable limit was initialized in the outer scope. If we want this code to work,
# we must initialize the limit local variable within the method definition. 