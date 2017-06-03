# @param {Integer} n
# @return {String}
def convert_to_title(n)
  return '' if n == 0
  chars = ('A'..'Z').to_a
  size = chars.size
  result = ''
  return chars.first if n-1 == 0

  while n != 0 do
    result = chars[(n-1) % size] + result
    n = ((n-1) / size)
  end
  result
end
convert_to_title(27)