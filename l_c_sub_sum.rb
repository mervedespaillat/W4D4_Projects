#------------------------------ PHASE I -------------------------------

def largest_contiguous_subsum(list)
    result= []  #constant O(1)

    (0...list.length).each do |i| # linear
        (i...list.length).each do |j| # O(n) * O(n)
            pair = list[i..j] # O(n)
            result << pair # constant O(1)
        end
    end

     result.map {|ele| ele.sum}.sort.last #O(n) + O(log n) + O(1) + O(n)
end

list =[5, 3, -7]
p largest_contiguous_subsum(list)

# O(1)  + O(n) * O(n) + O(n) + O(1) + O(n) + O(log n) + O(1) + O(n)
#O(n^2) -- Quadratic time
#------------------------------ PHASE II -------------------------------

def largest_contiguous_subsum(list)
    sub_sum = []
    largest_sum = nil

        list.each_with_index do |ele, i|
            sub_sum << [ele]

        end
        


end



