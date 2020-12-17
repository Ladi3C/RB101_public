=begin
Problem:
        The difference of two.

        The objective is to return all pairs of integers from a given array of integers that have
        a difference of 2.
        The result array should be sorted in ascending order of values.
        Assume there are no duplicate integers in the array.
        THe order of the integers in the inpurt array should not matter.

=end

difference_of_two([1, 2, 3, 4]) == [[1, 3], [2, 4]]
difference_of_two([4, 1, 2, 3]) == [[1, 3], [2, 4]]
difference_of_two([1, 23, 3, 4, 7]) == [[1, 3]]
difference_of_two([4, 3, 1, 5, 6]) == [[1, 3], [3, 5], [4, 6]]
difference_of_two([2, 4]) == [[2, 4]]
difference_of_two([1, 4, 7, 10, 13]) == []