# @param {Integer} num
# @return {String}
def convert_to_base7(num)
  return '0' if (num == 0)
  sign = ''
  if (num < 0)
    num *= -1 
    sign = '-'
  end
  result = ''
  while num > 0
    result = (num % 7).to_s + result
    num = num / 7
  end
  sign + result
end
convert_to_base7(100)