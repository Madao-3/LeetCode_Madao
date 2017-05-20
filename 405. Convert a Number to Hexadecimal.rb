# @param {Integer} num
# @return {String}
def to_hex(num)
  if num < 0
    num = 0xffffffff + num + 1
  end
  return '0' if num == 0
  map = ('0'..'9').to_a + ('a'..'f').to_a 
  str = ''
  while(num != 0) do
    num,index = num.divmod(16)
    str += map[index]
  end
  return str.reverse

end
to_hex(-1)