=begin
Problem:
        You are given a method named spin_me 
        that takes a string as an argument 
        and returns a string that contains the same words, 
        but with each word's characters reversed. 
        Given the method's implementation, 
        will the returned string 
        be the same object 
        as the one passed in as an argument 
        or a different object?


=end


def spin_me(str)
  str.split.each do |word|
    word.reverse!
  end.join(" ")
end

a = "hello world"
p a.object_id

p spin_me(a) # "olleh dlrow"