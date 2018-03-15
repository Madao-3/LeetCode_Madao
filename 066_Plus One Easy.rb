# @param {Integer[]} digits
# @return {Integer[]}
def plus_one(digits)
  r = []
  plus = 0
  is_first = true
  digits.reverse.each do |i| 
    if is_first
      ni = i + 1 + plus
      is_first = false
    else
      ni = i + plus
    end
    if ni >= 10
      ni = 0
      plus = 1
    else
      plus = 0
    end
    r << ni
  end
  if plus != 0
    r << 1
  end
  r.reverse
end

plus_one([1,0])