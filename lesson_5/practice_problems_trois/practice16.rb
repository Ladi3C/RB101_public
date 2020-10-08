=begin

Problem: 
        Write a method that returns one UUID when called with NO parameters.

        - notice that its a mix of LOWERCASED letters and numbers
        - notice that its a string 


Example: 
        UUID has 5 sections 
     8              4                 4              4                  12
  f65c57f6  -  a  6  a  a   -    1  7  a  8    -  f  a  a  1   -   a  6  7  f  2  d  c  9  f  a  9  1  "   
  01234567  8  9  10 11 12  13   14 15 16 17  18  19 20 21 22 23  24  25 26 27 28 29 30 31 32 33 34 35
Explicit rule: NO PARAMETERS

Data structure: 
        input:  NONE
        output: string 
Algorithm:

Define a method with NO parameters
set empty variables for each section, perhaps work with an array
set a constant or variable containing lowercased letters
set a constant or variable containing  numbers and call to string method
put both of the above  in one variable perhaps for randomization

create a loop that will push randomization into each array
concatinate the array

Symbol#to_proc
if there is a method for every element in that collection with a name it runs that method on every element
this doesnt work on methods that take arguments.

(&:to_s) expecting a `Proc` object if its not it runs #to_proc, :to_s.to_proc (turned in to a proc)
unary & <---  turns it into a block -->  { |n| n.to_s }

=end


# def generate_UUID
#   chars = ('a'..'f').to_a + (1..9).to_a.map(&:to_s)
  
#   uuid = ""
#   section = [8, 4, 4, 4, 12]

def uuid
chars = ('a'..'f').to_a + (1..9).to_a.map(&:to_s)
uuid_arr = ""
dash = "-"
dash_index = [8, 13, 18, 23]
char_index = (0..7).to_a + (9..12).to_a + (14..17).to_a +
             (19..22).to_a + (24..35).to_a
counter = 0

  loop do 
    if char_index.include?(counter)
      uuid_arr << chars.sample
    elsif dash_index.include?(counter)
      uuid_arr << dash 
    end
    counter += 1
    break if counter == char_index.size + 4
  end
  uuid_arr
end 

p uuid

 # /(blue|black)berry/