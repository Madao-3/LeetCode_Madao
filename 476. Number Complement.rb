# @param {Integer} num
# @return {Integer}
def find_complement(num)
  num.to_s(2).split('').map do |i|
    (i == '0' ? '1' : '0')
  end.join('').to_i(2)
end