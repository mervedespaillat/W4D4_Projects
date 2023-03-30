#  --------------------------------- Phase 1 ---------------------------------

# def my_min(arr)  # O(n^2)
#     result = arr[0] # constant

#     arr.each do |ele| # linear 
#         arr.each do |inner_ele|  # O(n) * O(n)
#             next if ele == inner_ele # constant + constant

#             if ele < inner_ele && ele < result # constant
#                 result = ele # constant
#             end
#         end
#     end

#     result # constant
# end

#  --------------------------------- Phase 2 ---------------------------------

# def my_min(arr)
#     result = arr[0]

#     arr.each do |ele|
#         if result > ele
#             result = ele
#         end
#     end

#     result
# end

arr = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
p my_min(arr)  # =>  -5
