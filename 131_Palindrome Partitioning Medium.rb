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
