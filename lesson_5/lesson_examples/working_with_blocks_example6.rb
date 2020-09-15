[{a: 'ant', b: 'elephant'}, {c: 'cat'}].select do |hash|
  hash.all? do |key, value|
    value[0] == key.to_s
  end
end 


=begin

We are invoking the Array#select method on a two-element array that contains two hashes. We are
passing each hash to block parameter hash. We are calling each hash on Enumerable#all? method, through
block parameters key and value. All? method returns a boolean that depend on the criteria of the block. 
On line 3 we are comparing the letter in index 0 of the value and checking to see if it matches
the first letter of the key (we must convert the key to a string for comparison). 

On the first hash, the return value is false because 'e' is not 'b'.
BUT the second hash returns true. 

Selection only care about the truthiness of the return value.
The return value should be 
=> [{c: 'cat'}] 

=end