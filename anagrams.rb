# def first_anagram?(word1, word2)
#     counter = Hash.new(0)

#     word1.each_char { |char| counter[char] += 1 }
#     word2.each_char { |char| counter[char] -= 1 }

#     # p counter.values
#     return true if counter.values.all? { |val| val == 0 }
#     false   
# end

#---------------------- Phase 1 -----------------------------
def first_anagram?(str1, str2)
    temp = str1.chars.permutation.to_a

    joined = temp.map { |word| word.join }
    return true if joined.include?(str2)
    false
end

#---------------------- Phase 2 -----------------------------

p first_anagram?("elvis", "lives") 