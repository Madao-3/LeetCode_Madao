# @param {Integer[]} nums
# @return {Integer}
def array_pair_sum(nums)
  nums.sort!
  sum = 0
  i = 0
  while i < nums.size
    sum += nums[i]
    i += 2
  end
  sum
end
