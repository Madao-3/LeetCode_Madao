# @param {Integer} n
# @return {Integer}
def count_numbers_with_unique_digits(n)
  return 1 if n == 0
  result = 10
  count = 9
  i = 2
  while i <= n do
    count *= (11 - i)
    result += count
    i += 1
  end
  result
end
count_numbers_with_unique_digits(2)