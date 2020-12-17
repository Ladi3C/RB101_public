=begin
Problem:
        Write a method 
        that takes a string as argument, 
        and returns true 
        if all parentheses in the string are properly balanced, 
        false otherwise. 
        To be properly balanced, 
        parentheses must occur in matching '(' and ')' pairs.

      Note that balanced pairs must each start with a (, not a ).

Example:
        balanced?('What (is) this?') == true
        balanced?('What is) this?') == false
        balanced?('What (is this?') == false
        balanced?('((What) (is this))?') == true
        balanced?('((What)) (is this))?') == false
        balanced?('Hey!') == true
        balanced?(')Hey!(') == false
        balanced?('What ((is))) up(') == false
Edgecases:
        - if there is no paranthesis then it is still true
        - if it starts with ) then it is automatically false
        - if it starts with ( and no matching pair it is false
Data Structure:
        Input : string
        output: boolean
Algorithm:
        - push all of the parenthesis in one string
        - if the string starts with ) then return false
        - if there are equal amount of ( and  ) return true (determine this by counting)

=end

def get_all_parenthesis(sentence)
  string = ''
  sentence.chars.each do |char|
    string << char if "()".include?(char)
  end
  string
end 


def balanced?(sentence)
  parenthesis = get_all_parenthesis(sentence)
  return false if parenthesis.start_with?(')')
  return false if parenthesis.end_with?('(')
  parenthesis.count('(') == parenthesis.count(')')
end



# p balanced?('What (is) this?') #== true
# p balanced?('What is) this?') #== false
# p balanced?('What (is this?') #== false
# p balanced?('((What) (is this))?') #== true
# p balanced?('((What)) (is this))?') #== false
# p balanced?('Hey!') #== true
# p balanced?(')Hey!(') #== false
# p balanced?('What ((is))) up(') #== false

p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false