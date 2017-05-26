# @param {Integer[]} nums
# @return {Integer}
def max_sub_array(nums)
  max = -99999999
  tmp = 0
  nums.each do |i|
    tmp = [tmp+i,i].max
    max = [max, tmp].max
  end
  max
end
