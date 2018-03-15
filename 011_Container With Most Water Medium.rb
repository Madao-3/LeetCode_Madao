# @param {Integer[]} height
# @return {Integer}
def max_area(height)
  max = 0
  i = 0
  j = height.length - 1
  return 0 if (j <= 0)
  while (i < j) do
    area = cal_area(height, i, j)
    if height[i] < height[j]
      i += 1
    else
      j -= 1
    end
    max = area if (area > max)
  end
  return max
end

def cal_area(height, x, y)
  h = height[x] < height[y] ? height[x] : height[y]
  r = h * (y - x)
  return r
end

max_area([1,2])