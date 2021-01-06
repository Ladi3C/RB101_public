=begin
Problem: 
        Each block can only be used once.
        Write a method 
        that returns true 
        if the word passed in as an argument 
        can be spelled from this set of blocks, false otherwise.
Algorithm:
        - 
=end

# BLOCKS = [
#           ['B', 'O'], ['X', 'K'], ['D', 'Q'], 
#           ['C', 'P'], ['N', 'A'], ['G', 'T'], 
#           ['R', 'E'], ['F', 'S'], ['J', 'W'],
#           ['H', 'U'], ['V', 'I'], ['L', 'Y'],
#           ['Z', 'M']
#         ]

BLOCKS = %w(BO, XK, DQ, CP, NA, GT, RE, FS, JW, HU, VI, LY, ZM)

def block_word?(word)
  bool_arr = BLOCKS.map do |block| 
    if word.upcase.count(block) < 2
      true
    elsif word.upcase.count(block) == 2
      false
    end
  end
  bool_arr.all?(true)
end


 p block_word?('BATCH') #== true
 p block_word?('BUTCH') #== false
 p block_word?('jest') #== true