p ([1, 2, 3].map do |num|
  if num > 1
    puts num
  else
    num
  end
end)


# output : 2, 3
# return: [1, nil, nil]