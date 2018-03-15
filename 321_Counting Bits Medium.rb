# @param {Integer} num
# @return {Integer[]}
def count_bits(num)
  res = [0]
  num.times do |n|
     n = n + 1
     res << n.to_s(2).chars.map(&:to_i).inject(:+)
  end
  res
end

count_bits(16)