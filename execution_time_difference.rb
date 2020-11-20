# Given a list of integers find the smallest number in the list.
require 'byebug'
def my_min(arr)         
    min = 0

    i = 0
    while i < arr.length - 1            # i = 0
        j = i + 1                       # j = 2
        while j < arr.length            
            min = (arr[i] < min) ? arr[i] : min           # arr[i] = 0 & arr[j] = 5 & min = 0
            j += 1
        end
        i += 1
    end

    min
end

list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
p my_min(list)  # =>  -5