=begin
Problem:
        Given an array of n positive integers and a postive integer s, 
        find the minimal length of a contiguous subarray of which the sum >= s.
        If there isn't one, return 0 instead.

        - out of the given array get contiguous sub-arrays
        - out of the subarrays, get all the sub-arrays that are more or equal to the second argument
        - out of those subarrays, select the subarrays with the fewest elements. 

Example: 
        miniSubLength([2, 3, 1, 2, 4, 3], 7) == 2
        miniSubLength([1, 10, 5, 2, 7], 9) == 1
        miniSubLength([1, 11, 100, 1, 0, 200, 3, 2, 1, 250], 280) == 4
        miniSubLength([1, 2, 4], 8) == 0
Data Structure:
        Input: array, integer
        Output: integer
Algorithm: 
        - return 0 if there isnt one

=end

def get_subarrays(array)
  subarrays = []
  0.upto(array.length - 1) do |idx1|
    idx1.upto(array.length - 1) do |idx2|
      subarrays << array[idx1..idx2]
    end
  end
  subarrays
end


def miniSubLength(array, number)
  subs = get_subarrays(array)
  subs.select! { |subarray| subarray.sum >= number }
  return 0 if subs.empty?

  sorted_subs = subs.sort_by {|subarray| subarray.size }
  return sorted_subs[0].size

  #arr.each_cons(2).to_a
end

#p get_subarrays([2, 3, 1, 2, 4, 3])#.sort_by { |x| x.size }

puts
p miniSubLength([2, 3, 1, 2, 4, 3], 7) == 2
p miniSubLength([1, 10, 5, 2, 7], 9) == 1
p miniSubLength([1, 11, 100, 1, 0, 200, 3, 2, 1, 250], 280) == 4
p miniSubLength([1, 2, 4], 8) == 0