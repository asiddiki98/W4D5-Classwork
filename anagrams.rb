def anagram?(str1, str2) #O(n!)
   chars = str1.split('')
   chars.permutation.to_a.map(&:join).include?(str2)
end 

# p anagram?("gizmo", "sally")    #=> false
# p anagram?("elvis", "lives")    #=> true

def anagram_two?(str1, str2)
    split = str2.split('')
    str1.each_char do |char|
        i = split.index(char)
        split.delete_at(i) unless i == nil
    end 
    split.empty?
end

p anagram_two?("gizmo", "sally")    #=> false
p anagram_two?("elvis", "lives")    #=> true