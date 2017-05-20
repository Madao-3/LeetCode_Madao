# @param {Integer[]} nums
# @return {Integer[]}
def find_duplicates(nums)
  res = []
  nums.size.times do |i|
    idx = nums[i].abs - 1;
    res << idx + 1 if (nums[idx] < 0)
    nums[idx] = -nums[idx];
  end
  res
end
find_duplicates([4,3,2,7,8,2,3,1])