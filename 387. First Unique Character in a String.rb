# @param {String} s
# @return {Integer}
def first_uniq_char(s)
  m = Hash.new { |h, k| h[k] = 0 }
  s.each_char { |c| m[c] += 1 }
  m.each { |k, v| return s.index(k) if v == 1 }
  return -1
end

first_uniq_char(s)