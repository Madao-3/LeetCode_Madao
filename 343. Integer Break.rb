# @param {Integer} n
# @return {Integer}
def integer_break(n)
  return n - 1 if n <= 3
  mod = n % 3
  return 3 ** (n / 3) if mod == 0
  return 4 * (3 ** ((n - 4) / 3)) if mod == 1
  return 2 * (3 ** (n / 3))
end
