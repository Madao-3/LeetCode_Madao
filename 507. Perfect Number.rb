# @param {Integer} num
# @return {Boolean}
def check_perfect_number(num)
return false if num == 1
  total = 1
  div = 2
  while div * div <= num
    if num % div == 0
      total += div
      if div * div != num
        total += num / div
      end
    end
    div += 1
  end
  return total == num
end