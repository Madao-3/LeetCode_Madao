# @param {String[]} strs
# @return {String}
def longest_common_prefix(strs)
  return '' if !strs || strs.length == 0
  return strs.first if strs.length == 1
  prefix = ''

  strs.map(&:size).max.times do |i|
    bool = true
    tmp = nil
    strs.each do |str|
      p str[i]
      unless str[i]
        bool = false
        break
      end
      if tmp
        # p bool
        bool = bool && (tmp == str[i])
      else
        tmp = str[i]
      end
    end
    if !bool
      return prefix
    end
    prefix << tmp if tmp
  end
  prefix
end

# strs = ['abcdd','abcddss','abcdd1111','abcdd1']
# longest_common_prefix(["aca","cba"])