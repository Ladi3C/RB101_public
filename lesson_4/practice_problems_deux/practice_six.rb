=begin

Problem:  What is the return value of the following statement? Why?

Answer :  Pop destructively removes the last element in an array and returns it. 
          The return value is 'caterpillar'. We are calling size on 'caterpillar',
          which counts the string. The return should be => 11
=end

['ant', 'bear', 'caterpillar'].pop.size