# @param {Integer[]} nums
# @return {Integer[][]}
def three_sum(nums)
  nums.sort!
  result = []
  (nums.length - 3).times do |i|
    # i 如果大于0就不用玩了
    next unless i.zero? || i > 0 && nums[i - 1] != nums[i]
    # 左右收缩大法好
    left = i + 1
    right = nums.length - 1
    while left < right
      # s = nums.values_at(* i, left, right).inject(&:+) 用了会超时
      sum = nums[i] + nums[left] + nums[right]
      # 如果是0 就开始收缩
      if sum.zero?
        result.push([nums[i], nums[left], nums[right]])
        left += 1
        right -= 1
        left += 1 while left < right && nums[left] == nums[left - 1]
        right += 1 while right > left && nums[right] == nums[right + 1]
      # 小于0 左边走
      elsif sum < 0
        left += 1
      # 大于0 右边走
      else
        right -= 1
      end
    end
  end
  result
end
three_sum([-1,0,1,2,-1,-4])