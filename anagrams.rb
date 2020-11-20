def anagram?(str1, str2) #O(n!)
   chars = str1.split('')
   chars.permutation.to_a.map(&:join).include?(str2)
end 

# p anagram?("gizmo", "sally")    #=> false
# p anagram?("elvis", "lives")    #=> true

def anagram_two?(str1, str2)                #O(n^2)       
    split = str2.split('')                  #O(n)
    
    str1.each_char do |char|                #O(n)         # O(n^2)
        i = split.index(char)               #O(n)
        split.delete_at(i) unless i == nil  #O(n)
    end

    split.empty?                            #O(1)
end

# p anagram_two?("gizmo", "sally")    #=> false
# p anagram_two?("elvis", "lives")    #=> true

def anagram3(str1, str2)                    #O(nlogn)
    split1 = str1.split("").sort            #O(n) + O(nlogn) = O(nlogn)
    split2 = str2.split("").sort            #O(n) + O(nlogn) = O(nlogn)

    split1 == split2                        #O(n)
end

# p anagram3("gizmo", "sally")    #=> false
# p anagram3("elvis", "lives")    #=> true

def anagram4(str1, str2)
    count = Hash.new(0)         #O(1)
    
    str1.each_char do |char|    #O(n)
        count[char] += 1        #O(1)
    end

    str2.each_char do |char|    #O(n)
        count[char] -= 1        #O(1)
    end

    # count.values.uniq.length == 1
    count.values.each do |v|    #O(n)
        return false if v > 0
    end
    true
end

p anagram4("gizmo", "sally")    #=> false
p anagram4("elvis", "lives")    #=> true