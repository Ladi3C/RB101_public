=begin
Problem:
        A collection of spelling blocks has two letters per block, as shown in this list:

        B:O   X:K   D:Q   C:P   N:A
        G:T   R:E   F:S   J:W   H:U
        V:I   L:Y   Z:M
        
        This limits the words you can spell with the blocks to just those words that do not use both letters from any given block. 
        Each block can only be used once.

        Write a method that 
        returns true 
        if the word passed in as an argument 
        can be spelled from this set of blocks, 
        false otherwise.
Example:
        block_word?('BATCH') == true
        block_word?('BUTCH') == false
        block_word?('jest') == true
Data Structure:
        Input : string
        Output: boolean
Algorithm:
        - assign the blocks to a constant
        - iterate through the string
=end

BLOCKS = ['BO', 'XK', 'DQ', 'CP', 'NA', 'GT', 'RE', 'FS', 'JW', 'HU', 'VI', 'LY', 'ZM']

def block_word?(string)
  block = BLOCKS.dup
  block.all? do |letters|
    string.upcase.count(letters) < 2 
  end
end

p block_word?('BATCH') #== true
p block_word?('BUTCH') #== false
p block_word?('jest') #== true