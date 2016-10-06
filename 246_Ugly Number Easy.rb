# @param {Integer} num
# @return {Boolean}
def is_ugly(num)
  return false if num == 0
  while (num % 2 == 0) do num /= 2 end
  while (num % 3 == 0) do num /= 3 end
  while (num % 5 == 0) do num /= 5 end
  num == 1
end