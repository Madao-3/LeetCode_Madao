# @param {Integer[]} nums
# @param {Integer} lower
# @param {Integer} upperx
# @return {Integer}
def count_range_sum(nums, lower, upper)
  ranges = [0]
  nums.each do |num|
    ranges << ranges.last + num
  end
  counter(ranges, 0, nums.size + 1, lower, upper)
end

def counter(sums, left, right, lower, upper)
  return 0 if right - left <= 1
  middle = (left + right) / 2
  count = counter(sums, left, middle, lower, upper)
          + counter(sums, middle, right, lower, upper)
  j = middle
  k = middle
  s = middle
  r = []
  (left..(middle - 1)).each do |i|
    while k < right && sums[k] - sums[i] < lower do
      k += 1
    end
    while j < right && sums[j] - sums[i] <= upper do
      j += 1
    end
    count += j - k
    while s < right && sums[s] < sums[i]
      r << sums[s]
      s += 1
    end
    r << sums[i]
  end
  p left, r,sums
  sums[left, r.size] = r
  count
end
count_range_sum( [-2, 5, -1], -2, 2)