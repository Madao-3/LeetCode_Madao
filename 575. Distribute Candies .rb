# @param {Integer[]} candies
# @return {Integer}
def distribute_candies(candies)
  size = candies.size
  return 0 if size % 2 != 0
  hash = {}
  res = 0
  candies.each do |c|
    hash[c] ||= 0
    hash[c] += 1
    if hash[c] == 1 && res < (size / 2)
      res+=1
    end
  end
  res
end

#75329