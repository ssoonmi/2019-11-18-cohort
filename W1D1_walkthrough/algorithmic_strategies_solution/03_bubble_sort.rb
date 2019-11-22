# Reimplement the bubble sort outlined in the preceding lecture.
# The bubble_sort method should accept an array of numbers and arrange the elements in increasing order.
# The method should return the array.
# Do not use the built-in Array#sort

def bubble_sort(array)
    # [2, 5, 8]
    sorted = false # sorted will be the trigger to hop into the while loop
    while !sorted # only execute this if sorted is false
        sorted = true # set it to true right away
        (0...array.length - 1).each do |i| # i not including the last index [0, 1]
            # 5 > 8
            if array[i] > array[i + 1]
                array[i], array[i + 1] = array[i + 1], array[i] # swap the elements
                sorted = false # set the trigger of false because
                # this array was not sorted in this while loop's iteration
            end
            # sorted = true
        end
    end

    array # [2, 5, 8]
end

p bubble_sort([2, 8, 5, 2, 6])      # => [2, 2, 5, 6, 8]
p bubble_sort([10, 8, 7, 1, 2, 3])  # => [1, 2, 3, 7, 8, 10]