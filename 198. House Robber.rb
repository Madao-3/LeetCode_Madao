# @param {Integer[]} nums
# @return {Integer}
def rob(nums)
  return 0 if nums.size == 0
  return nums.max if nums.size <= 2
  dp = [nums[0], [nums[0], nums[1]].max]
  (nums.size - 2).times do |i|
    index = i + 2
    dp << [nums[index] + dp[index - 2], dp[index - 1]].max
  end
  dp.pop
end

rob([1,3,6,18,9,1])