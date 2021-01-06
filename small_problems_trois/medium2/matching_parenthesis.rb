=begin
Problem:
        Write a method 
        that takes a string as argument, 
        and returns true 
          if all parentheses in the string are properly balanced, 
          false otherwise. 
        To be properly balanced, 
        parentheses must occur in matching '(' and ')' pairs.

        - if there is only one parenthesis == false
        - if it starts with ')' or ends with '(' == false


Example:
        balanced?('What (is) this?') == true
        balanced?('What is) this?') == false
        balanced?('What (is this?') == false
        balanced?('((What) (is this))?') == true
        balanced?('((What)) (is this))?') == false
        balanced?('Hey!') == true
        balanced?(')Hey!(') == false
        balanced?('What ((is))) up(') == false
=end

# def balanced?(string)
#   parenthesis = ''
#   string.each_char { |char| parenthesis << char if '()'.include?(char)}
#   if parenthesis.start_with?(')') || 
#      parenthesis.end_with?('(') ||
#      parenthesis.count('()').odd?
#     false
#   elsif parenthesis.empty? || parenthesis.count('()').even?
#     true
#   end 
# end

# def balanced?(string)
#   parenthesis = ''
#   string.each_char { |char| parenthesis << char if "()".include?(char)}
#   return false if parenthesis.start_with?(')')
#   return false if parenthesis.end_with?('(')
#   parenthesis.count('(') == parenthesis.count(')')
# end

def balanced?(string)
  parenthesis = 0
  string.each_char do |char|
    parenthesis += 1 if char == '('
    parenthesis -= 1 if char == ')'
    break if parenthesis < 0 
  end
  parenthesis.zero?
end

p balanced?('What (is) this?') #== true
p balanced?('What is) this?') #== false
p balanced?('What (is this?') #== false
p balanced?('((What) (is this))?') #== true
p balanced?('((What)) (is this))?') #== false
p balanced?('Hey!') #== true
p balanced?(')Hey!(') #== false
p balanced?('What ((is))) up(') #== false
p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false