# @param {Integer[]} nums
# @return {String[]}
def find_relative_ranks(nums)
  l = []
  x = nums.sort.reverse
  nums.each_with_index do |i|
    index = x.index(i)
    l << if index <= 2
      ["Gold Medal","Silver Medal","Bronze Medal"][index]
    else
      (index + 1).to_s
    end
  end
  l
end
# find_relative_ranks([10,3,8,9,4])
# find_relative_ranks([5,4,3,2,1])