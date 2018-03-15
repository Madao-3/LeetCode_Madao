# @param {Integer[]} nums
# @return {Boolean}
def can_jump(nums)
  right = 1
  size = nums.size
  nums.each.with_index(1) do |num, i|
    return true if right >= size
    right = [right, i + num].max unless right < i
  end
  return right >= size
end
