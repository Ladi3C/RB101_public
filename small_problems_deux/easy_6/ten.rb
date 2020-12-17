def triangle(num)
  factors = (1..num).to_a
  counter = 0
  loop do
    spaces = num - factors[counter]
    stars = factors[counter]

    puts " #{" " * spaces}#{"*" * stars}"

    counter += 1
    break if counter == factors.size
  end 

end



triangle(5)
triangle(9)

#     *
#    **
#   ***
#  ****
# *****