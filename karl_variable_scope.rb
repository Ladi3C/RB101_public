# 1

a = 7

def my_value(b)
  b += 10
end

my_value(a)
puts a

# 2

a = 7

def my_value(a)
  a += 10
end

my_value(a)
puts a

# 3

a = 7

def my_value(b)
  a = b
end

p my_value(a + 5)
puts a

# 4

a = "Xyzzy"

def my_value(b)
  b[2] = '-'
end

my_value(a)
puts a

# 5

a = "Xyzzy"

def my_value(b)
  b = 'yzzyX'
end

my_value(a)

# 6

a = 7

def my_value(b)
  b = a + a
end

my_value(a)
puts a


# 7

a = 7
array = [1, 2, 3]

array.each do |element|
  a = element
end

puts a

# 8

array = [1, 2, 3]

array.each do |element|
  a = element
end

puts a

# 9

a = 7
array = [1, 2, 3]

array.each do |a|
  a += 1
end

puts a

# This problem demonstrates shadowing. 
# Shadowing occurs when a block argument
# hides a local variable that is defined outside the block. 

# 10

a = 7
array = [1, 2, 3]

def my_value(ary)
  ary.each do |b|
    a += b
  end
end

my_value(array)
puts a

# 11

arr = [1, 2, 3]

for i in arr do
  a = 5      # a is initialized here
end

puts a   