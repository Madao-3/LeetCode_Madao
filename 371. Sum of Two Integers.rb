# @param {Integer} a
# @param {Integer} b
# @return {Integer}
def get_sum(a, b)
  while(a) do
    x = a ^ b
    a = (a & b) << 1
    b = x
  end
  return b
end
get_sum(1,-1)