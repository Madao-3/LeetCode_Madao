# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
# def two_sum(nums, target)
#   mock_a = nil
#   mock_b = nil
#   rest_count = nums.count
#   rest_count.times do |i|
#     mock_a = i
#     r = (rest_count-i)
#     r.times do |j|
#       if i != j && (nums[mock_a] + nums[j+i]) == target
#         mock_b = j+i
#         break
#       end
#     end
#     break if mock_b
#   end
#   if mock_b
#     [mock_a, mock_b]
#   else
#     []
#   end
# end
# 枚举计算量大，不科学，会TLE

def two_sum(nums, target)  
  search = Hash.new  
  nums.each_with_index do |item, index|  
    i = search[target - item]  
    return [i, index] if i != nil  
    search[item] = index  
  end  
end  
# 哈希缓存是正道