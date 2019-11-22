# Write a method, compress_str(str), that accepts a string as an arg.
# The method should return a new str where streaks of consecutive characters are compressed.
# For example "aaabbc" is compressed to "3a2bc".
require 'byebug'

def compress_str(str)
    c_str = ""

    # str = 'aaab'
    str_arr = str.chars # ['a', 'a', 'a', 'b']
    i = 0
    streak = 1 
    while i < str.length # i = 3, streak = 1, c_str = '3ab'
        if str_arr[i] == str_arr[i + 1] # 'b' == nil
            streak += 1 
        else
            if streak == 1
                c_str += str_arr[i]
            else
                c_str += streak.to_s + str_arr[i]
            end
            # c_str += case streak
            # when 1
            #     str_arr[i] # 'b'
            # else # anything other than 1
            #     streak.to_s + str_arr[i] # '3a'
            # end
            streak = 1
        end
        i += 1
    end
    return c_str
    # new_str = ""
    
    # i = 0
    # while i < str.length
    #     char = str[i]
    #     count = 0

    #     while char == str[i]
    #         count += 1
    #         i += 1
    #     end

    #     if count > 1
    #         new_str += count.to_s + char    
    #     else
    #         new_str += char
    #     end
    # end

    # new_str
end

p compress_str("aaabbc")        # => "3a2bc"
p compress_str("xxyyyyzz")      # => "2x4y2z"
p compress_str("qqqqq")         # => "5q"
p compress_str("mississippi")   # => "mi2si2si2pi"
