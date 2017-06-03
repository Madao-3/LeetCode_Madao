# @param {String} s
# @return {Integer}
def longest_palindrome(s)
  count = 0
  index = 0
  single_one = nil
  while s.any? do
    str = s[index]
    if s.count(str) >= 2
      s.delete_at(s.index(str))
      s.delete_at(s.index(str))
      count += 2
    else
      s.delete_at(s.index(str))
      single_one = str  
    end
  end
  count += 1if single_one
  count
end

longest_palindrome(['a','b','a'])
