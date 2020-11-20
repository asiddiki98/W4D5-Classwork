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