
answer = 42

def mess_with_it(some_number)
  some_number += 8
end

new_answer = mess_with_it(answer)

p answer - 8

# answer is 34. Methods are self contained, numbers are immutable. line 10 is referencing
# line 2 and mess_with_it method definitions isnt being called on in line 10 anyway.
