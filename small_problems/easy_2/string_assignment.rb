# name = 'Bob'
# save_name = name
# name = 'Alice'
# puts name, save_name

name = 'Bob'
save_name = name
name.upcase!

# => 'BOB'
# => 'BOB'

# This question is a reference to how ruby uses variables as pointers.
# On line 6, local variable name is initialized to a string object that holds the name "BOB"
# On line 7, local variable save_name is initialized and is pointing to the same value that name holds.
# On line 8, the local variable name is destructively modified to upcased letters. This change,
# modification, doesnt change the value what each variable holds, it just upcases the value.
# In other words, both variables are pointing to the same string object, the string object has just been
# upcased. 