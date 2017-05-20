# @param {Integer} n
# @return {String}
def count_and_say(n)
  return n.to_s if n == 1
  text = '1'
  (n-1).times do |i|
    l = []
    list = text.split('')
    if list.count == 1
      text = '11'
      break
    end
    tmp = list.shift
    counter = 1
    list.each do |i|
      if i != tmp
        l += [counter, tmp]
        tmp = i
        counter = 1
      else
        counter += 1
      end
    end
    l += [counter, tmp]
    text = l.join('')
    p text
  end
  return text
end


# count_and_say(6)