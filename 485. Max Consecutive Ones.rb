# @param {Integer[]} nums
# @return {Integer}
def find_max_consecutive_ones(nums)
  tmp = 0
  max = 0
  nums.each do |i|
    if i == 1
      tmp += 1
      if max < tmp
        max = tmp
      end
    else
      tmp = 0
    end  
  end
  max
end
 # find_max_consecutive_ones([1,1,0,1,1,1])