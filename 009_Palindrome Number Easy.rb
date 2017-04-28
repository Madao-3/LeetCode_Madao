#计算一个数字是否是回文数字，我们其实就是将这个数字除以10，保留他的余数，下次将余数乘以10，加上这个数字再除以10的余数.
# @param {Integer} x
# @return {Boolean}
def is_palindrome(x)
  if x < 0
    return false
  elsif x == 0
    return true
  else
    tmp = x;
    y = 0;
    while x != 0 
      y = y*10 + x%10;
      x = x/10;
      if y == tmp
        return true;
      end
    end
  end
  return false
end

# is_palindrome 121
