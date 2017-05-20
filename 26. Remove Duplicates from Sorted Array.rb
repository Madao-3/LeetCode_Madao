# @param {Integer[]} nums
# @return {Integer}
def remove_duplicates(nums)
  size = nums.size
  return size if size <= 1
  size = 0
  nums.size.times do
    if nums[i] != nums[size]
      size += 1
      nums[size] = nums[i]
    end
  end
  size + 1
end
remove_duplicates([1,1])

,2,3,3])

def remove_duplicates(nums)
  nums.uniq!
  nums.count
end