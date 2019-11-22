# Write a method, max_inject(arr), that accepts any amount of numbers arguments and returns
# the largest number. Solve this using the built-in inject.

def max_inject(*arr) # splat operator allows you to take in any number of arguments
    # otherwise ruby will give you an argument error
    # makes and array of all the arguments input into this function
    # [1, -4, 0, 7, 5]
    arr.inject do |max, el|
        if el > max
            el
        else
            max
        end
    end
    # 7
end

p max_inject(1, -4, 0, 7, 5)  # => 7
p max_inject(30, 28, 18)      # => 30
