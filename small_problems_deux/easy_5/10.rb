=begin
Problem:
        Write a method that will take a short line of text, and print it within a box.
Example:
        print_in_box('To boldly go where no one has gone before.')
        +--------------------------------------------+
        |                                            |
        | To boldly go where no one has gone before. |
        |                                            |
        +--------------------------------------------+
Data Structure:
        Input :  string
        Output:  formatted strings
Algorithm:
        - 2 more - than the string given
        - + in the beginning and end 
=end

# def horizontal(msg)
#   dash_length = msg.length + 2
#   puts "+#{'-' * dash_length}+"
# end
# #horizontal("To boldly go where no one has gone before.")

# def vertical(msg)
#   dash_length = msg.length + 2
#   puts "|#{' ' * dash_length}|"
# end
# #vertical("To boldly go where no one has gone before.")

# def print_msg(msg)
#   puts "| #{msg} |"
# end

# #print_msg("To boldly go where no one has gone before.")

# def print_in_box(message)
#   horizontal(message)
#   vertical(message)
#   print_msg(message)
#   vertical(message)
#   horizontal(message)
# end

def print_in_box(message)
  horizontal = "+#{'-' * (message.length + 2)}+"
  empty_line = "|#{' ' * (message.length + 2)}|"

  puts horizontal
  puts empty_line
  puts "| #{message} |"
  puts empty_line
  puts horizontal
end

print_in_box("To boldly go where no one has gone before.")