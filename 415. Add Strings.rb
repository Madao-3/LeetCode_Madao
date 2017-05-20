# @param {String} num1
# @param {String} num2
# @return {String}
def add_strings(num1, num2)
  num1 = num1.split('').map(&:to_i).reverse
  num2 = num2.split('').map(&:to_i).reverse
  tmp = 0
  l = []
  [num2.size,num1.size].max.times do |i|
    n1 = num1[i] || 0
    n2 = num2[i] || 0
    num = n1 + n2 + tmp
    p "#{tmp},#{n1},#{n2},#{num}，#{i}"
    l << num % 10
    tmp = num / 10
  end
  if tmp != 0
    l << tmp
  end
  l.reverse.join('')
end

add_strings('999', '12')