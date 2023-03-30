

#---------------------- Phase 1 -----------------------------
def first_anagram?(str1, str2)
    temp = str1.chars.permutation.to_a

    joined = temp.map { |word| word.join }
    return true if joined.include?(str2)
    false
end

#---------------------- Phase 2 -----------------------------

# def seconde_anagram?(str1, str2)


#     str1.each_char do |char|
#         # p str2.index(char) 
#          if str2.index(char) != nil
#             index = str2.index(char)
#             str2[index] = ""
#          end
#     end

#     return true if str2.length == 0
#     false
# end

# p seconde_anagram?("elvisqwaszxcvbnbbbbbbbbb", "livesqwaszxcvbnbbbbbbbbb") 

#---------------------- Phase III -----------------------------

def third_anagram?(str1, str2)
     str1.chars.sort == str2.chars.sort
end




#---------------------- Phase IV -----------------------------


def fourth_anagram?(word1, word2)
    counter = Hash.new(0)

    word1.each_char { |char| counter[char] += 1 }
    word2.each_char { |char| counter[char] -= 1 }

    # p counter.values
    return true if counter.values.all? { |val| val == 0 }
    false   
end

p fourth_anagram?("elvisqwaszxcvbnbbbbbbbbbnn", "livesqwaszxcvbnbbbbbbbbbnn") 