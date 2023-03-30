#---------------------- Phase 1 -----------------------------

# def first_anagram?(str1, str2)
#     temp = str1.chars.permutation.to_a # const + n + n! + n

#     joined = temp.map { |word| word.join } # const + n^2 
#     return true if joined.include?(str2) # 
#     false
# end

#---------------------- Phase 2 -----------------------------

# def seconde_anagram?(str1, str2)


    str1.each_char do |char| # n
        # p str2.index(char) 
         if str2.index(char) != nil # n + const
            index = str2.index(char) # const + n
            str2[index] = "" # n
         end
    end

    return true if str2.length == 0 # const + const
    false # const
end 

# p seconde_anagram?("elvisqwaszxcvbnbbbbbbbbb", "livesqwaszxcvbnbbbbbbbbb") 

#---------------------- Phase III -----------------------------

def third_anagram?(str1, str2)
     str1.chars.sort == str2.chars.sort # n log n + n
end

#---------------------- Phase IV -----------------------------

def fourth_anagram?(word1, word2)
    counter = Hash.new(0)

    word1.each_char { |char| counter[char] += 1 } # n
    word2.each_char { |char| counter[char] -= 1 } # n

    # p counter.values
    return true if counter.values.all? { |val| val == 0 } # const + n + n
    false   # const
end

p fourth_anagram?("elvisqwaszxcvbnbbbbbbbbbnn", "livesqwaszxcvbnbbbbbbbbbnn") 