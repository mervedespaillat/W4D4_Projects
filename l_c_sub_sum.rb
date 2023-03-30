#------------------------------ PHASE I -------------------------------

# def largest_contiguous_subsum(list)
#     result= []  #constant O(1)

#     (0...list.length).each do |i| # linear
#         (i...list.length).each do |j| # O(n) * O(n)
#             pair = list[i..j] # O(n)
#             result << pair # constant O(1)
#         end
#     end

#      result.map {|ele| ele.sum}.sort.last #O(n) + O(log n) + O(1) + O(n)
# end

# O(1)  + O(n) * O(n) + O(n) + O(1) + O(n) + O(log n) + O(1) + O(n)
#O(n^2) -- Quadratic time
#------------------------------ PHASE II -------------------------------

def largest_contiguous_subsum(list)
    largest_sum = list.first
    current_sum = list.first

    list[1..-1].each do |ele|
        # largest_sum = ele if ele > largest_sum
        if current_sum + ele > largest_sum
            largest_sum = current_sum + ele
            current_sum += ele
        else
            current_sum += ele
            current_sum = 0
        end
    end

    largest_sum    
end

list =[5, -3, 7, 10]
p largest_contiguous_subsum(list)

