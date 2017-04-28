# @param {Integer} x
# @param {Integer} y
# @return {Integer}
def hamming_distance(x, y)
  yy = y.to_s(2).split('').reverse
  xx = x.to_s(2).split('').reverse
  count = yy.count > xx.count ? yy.count : xx.count
  r = []
  count.times do |i|
    r << (xx[i] || '0') + (yy[i] || '0')
  end
  r.count('01') + r.count('10')
end
hamming_distance(1,3)