# @param {Integer[]} nums
# @return {Integer[]}
def find_disappeared_numbers(nums)
  return [] if nums.size <= 1
  max = nums.max
  if max < nums.count
    max = nums.count
  end
  (1..max).to_a - nums
end


