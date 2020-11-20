# Given a list of integers find the smallest number in the list.
require 'byebug'
def my_min(arr)         #O(n^2) 
    min = 0 #O(1)

    (0...arr.length).each do |i|     #O(n)
        min = arr[i] < min ? arr[i] : min    #O(1)
        (i+1...arr.length).each do |j|    #O(n)
            min = arr[j] < min ? arr[j] : min #O(1)
        end 
    end 
    min
end

# list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
# p my_min(list)  # =>  -5

def my_mintwo(arr)  #O(n)
    min = 0

    i = 0
    while i < arr.length - 1   
        min = (arr[i] < min) ? arr[i] : min       
        i += 1
    end
    min
end

# list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
# p my_mintwo(list)  # =>  -5

def lcs(array) #O(n^3)
    subs = []
    (0...array.length).each do |i|
        (i+1...array.length).each do |j|
            subs << array[i..j]
        end
    end

    subs.map(&:sum).max
end 

list = [2, 3, -6, 7, -6, 7]
p lcs(list)

# write a new function using O(n) time with O(1) memory
def lcs2(arr)    
    i = 0
    j = 1

    large_sum = 0
    current_sum = arr[i]

    until i == arr.length - 1       # cs = 2
        # add to current sum the next value
        current_sum += arr[j]       # cs 
        
        # compare and replace large_num if current_sum is greater
        if large_sum < current_sum
            large_sum = current_sum
        end

        # increment j to iterate through to the next value otherwise, increment i to move onto the next sum iteration
        if j != arr.length - 1
            j += 1
        else
            i += 1
            current_sum = arr[i]
            j = i + 1
        end
    end

    large_sum
end 

list2 = [2, 3, -6, 7, -6, 7]
p lcs2(list)