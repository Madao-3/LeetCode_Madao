# @param {String[]} time_points
# @return {Integer}
def find_min_difference(time_points)

  nums = time_points.map do |str|
    get_num(str)
  end.sort.uniq
  nums[0] += 1440
  nums[0] - nums[1]
end

def get_num(str)
  arr = str.split(':').map(&:to_i)
  arr[0] * 60 + arr[1]
end
find_min_difference(["23:59","00:00"])
find_min_difference(["00:00","23:59","00:00"])