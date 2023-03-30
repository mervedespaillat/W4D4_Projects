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
        largest_sum = ele if ele > largest_sum
        
        if current_sum + ele > largest_sum || current_sum + ele > 0
            current_sum += ele
            largest_sum = current_sum
        else
            current_sum = 0
        end
            
    end

    largest_sum    
end

list =[-5, -3, -10, -17]
list2 =[2, 3, -6, 7, -6, 7]
p largest_contiguous_subsum(list)
p largest_contiguous_subsum(list2)

