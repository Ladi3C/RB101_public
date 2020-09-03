=begin
Describe the difference between ! and ? in Ruby. And explain what would happen in the following scenarios:
! is a bang suffix. It is an indicator for mutating methods. It is also used to negate something. 
i.e !true == false or !false == true will give the opposite boolean 
i.e. != means not equal to  

1) what is != and where should you use it?
  Not equal to. We can use it in a while loop. 
2) put ! before something, like !user_name
  not user_name
3) put ! after something, like words.uniq!
  method is destructive, will mutate the caller with a bang suffix. 
4) put ? before something
  dont know
5) put ? after something
validation
6) put !! before something, like !!user_name
truthy 
=end 