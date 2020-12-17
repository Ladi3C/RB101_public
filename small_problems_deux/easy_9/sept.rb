=begin
Problem: 
        Write a method 
        that takes a first name, 
        a space, 
        and a last name 
        passed as a single String argument, 

        and returns a string that contains the 
        last name, 
        a comma, 
        a space, and 
        the first name.
Example:
        swap_name('Joe Roberts') == 'Roberts, Joe'
=end

# def swap_name(full_name)
#   name = full_name.split
#   first_name, last_name = name[0], name[1]
#   swapped_name = "#{last_name}, #{first_name}"
# end

def swap_name(full_name)
  full_name.split.reverse.join(", ")
end

p swap_name('Joe Roberts')#== 'Roberts, Joe'