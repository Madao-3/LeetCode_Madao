# # @param {Integer[]} height
# # @return {Integer}
def trap(height)
  max = height.max
  maps = height.map do |i|
    arr = Array.new(max, 0)
    i.times do |index|
      arr[index] = 1
    end
    arr
  end
  result = 0
  max.times do |index|
    temp = 0
    real_temp = 0
    is_start = false
    maps.each do |arr|
      i = arr[index]
      p i
      if i == 0
        temp += 1
      else
        if is_start
          real_temp += temp
          temp = 0
        else
          is_start = true
        end
      end
    end
    result += real_temp
  end
  result
end

# trap([0,1,0,2,1,0,1,3,2,1,2,1])

def trap(height)
  start_point = 0
  end_point = height.size - 1
  s_height = 0
  result = 0
  # 首尾收缩运算
  while start_point < end_point
    head = height[start_point]
    tail = height[end_point]
    current_height = 0
    if head < tail
      start_point += 1
      current_height = head
    else
      end_point -= 1
      current_height = tail
    end
    if current_height > s_height
      s_height = current_height
    else
      result += s_height - current_height
    end
    p "start_point:#{start_point}, end_point:#{end_point}, head:#{head}, tail:#{tail}, #{s_height}, #{current_height}"
    p result
    p '======='
  end
  result
end
trap([0,1,0,2,1,0,1,3,2,1,2,1])
