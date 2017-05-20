# @param {Integer} n
# @return {Boolean}
def is_power_of_two(n)
  while n!=0 do
    return true if n == 1
    return false if n % 2 == 1 
    n = n / 2
  end
  return true
end