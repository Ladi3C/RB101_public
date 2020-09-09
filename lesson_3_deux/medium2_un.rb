=begin

Every named entity in Ruby has an object_id. This is a unique identifier for that object.

It is often the case that two different things "look the same", but they can be different objects. 
The "under the hood" object referred to by a particular named-variable can change depending on what
 is done to that named-variable.

In other words, in Ruby, all values are objects...but they are not always the same object.

Predict how the values and object ids will change throughout the flow of the code below:

first  : same, same 
second : same, same 
third  : diff. diff
fourth : same same 
fifth  :
sixth  : 
=end
