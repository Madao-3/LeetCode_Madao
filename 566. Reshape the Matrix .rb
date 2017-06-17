# @param {Integer[][]} nums
# @param {Integer} r
# @param {Integer} c
# @return {Integer[][]}
def matrix_reshape(nums, r, c)
    o_nums = nums.flatten
    result = []
    index = 0
    if r * c > nums.count
      return o_nums
    end
    r.times do |i|
       result << nums[index..(index+c)] 
       index += c
    end
    result
end

matrix_reshape([[1,2],[3,4]], 1, 4)

# @# param {Integer[][]} nums
# # @param {Integer} r
# # @param {Integer} c
# # @return {Integer[][]}
# def matrix_reshape(nums, r, c)
#   origin_r = nums.size()
#   origin_c = nums[0].size()
#   n = origin_c*origin_r
#   if n == r*c
#     martrix = Array.new(r,[])
#     n.times do |i|
#       martrix[i / c][i%c] = nums[i / origin_c][i%origin_c]
#     end
#     return martrix
#   else
#     return nums
#   end
# end