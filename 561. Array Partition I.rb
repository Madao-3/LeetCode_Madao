# @param {Integer[]} nums
# @return {Integer}
def array_pair_sum(nums)
  nums.sort!
  nums.values_at(* nums.each_index.select {|i| i.even?}).inject(&:+)
end
