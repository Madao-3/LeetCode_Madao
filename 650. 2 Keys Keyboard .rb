# @param {Integer} n
# @return {Integer}
def min_steps(n)
  res = 0
  (2.. n+1).each do |i|
    while (n % i).zero?
      res += i
      n /= i
    end
  end
  return res
end
min_steps(3)

# @param {Integer} n
# @return {Integer}
def min_steps(n)
  (2.. n+1).map do |i|
    num = 0
    while (n % i).zero?
      num = i
      n /= i
    end
    p num
    num
  end.inject(&:+)
end
min_steps(6)

