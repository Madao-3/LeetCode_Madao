# @param {Integer[]} nums
# @return {Integer}
def length_of_lis(nums)
  f = []
  max = 0
  nums.each_with_index do |num, i|
    f[i] = 1
    j = 0
    while j < i
      if nums[j] < num
        f[i] = f[i] > f[j] + 1 ? f[i] : f[j] + 1
      end
      j += 1
    end
    if f[i] > max
      max = f[i]
    end
  end
  return max
end

length_of_lis([10, 9, 2, 5, 3, 7, 101, 18])