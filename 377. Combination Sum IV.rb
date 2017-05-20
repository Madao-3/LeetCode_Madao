# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def combination_sum4(nums, target)
  return 0 if nums.size == 0
  dp = []
  dp[0] = 1
  nums.sort!
  target.times do |i|
    index = i + 1
    nums.each do |a|
      break if index < a
      p a, index, dp
      dp[index] ||= 0
      dp[index] += dp[index - a] || 0
    end
  end
  dp[target] || 0
end

combination_sum4([3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25], 10)