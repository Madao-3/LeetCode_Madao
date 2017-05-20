# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def search_insert(nums, target)
  return 0 if target == 0
  on_pos = false
  pos = 0
  nums.each_with_index do |num, index|
    if num >= target
      return index + 1
    else
      pos = index
    end
  end
end


# search_insert([1,3,5,6], 0)
# search_insert([1,3,5,6], 1)
# search_insert([1,3,5,6], 2)
# search_insert([1,3,5,6], 4)
# search_insert([1,3,5,6], 7)