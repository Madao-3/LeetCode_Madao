# @param {Integer} n
# @return {Integer}
# * 个位数：1-9，一共9个,共计9个数字
# * 2位数：10-99,一共90个，共计180个数字
# * 3位数：100-999，一共900个，共计270个数字
# * 4位数，1000-9999，一共9000个，共计36000个数字
def find_nth_digit(n)
  type = 1
  num = 9
  while n > (num * type) do
    n -= num * type
    type += 1
    num *= 10
  end
  range = (n - 1) / type
  index = (n - 1) % type
  num = 10 ** (type - 1) + range
  num.to_s[index]
end
