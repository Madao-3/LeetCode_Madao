# @param {Integer[]} nums
# @return {Integer}
def third_max(nums)
  nums = nums.uniq
  3 > nums.size ? nums.max : nums.sort[-3]
end