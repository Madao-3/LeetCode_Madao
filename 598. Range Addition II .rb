# @param {Integer} m
# @param {Integer} n
# @param {Integer[][]} ops
# @return {Integer}
def max_count(m, n, ops)
  return 0 if ops == []
  x = [op[0] for op in ops]
  y = [op[1] for op in ops]
  minx = x.min
  miny = y.min
  if minx > m
    minx = m
  end
  if miny > n
    miny = n
  end
  return minx * miny
end