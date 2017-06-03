# @param {Integer[]} ratings
# @return {Integer}
def candy(ratings)
   n = ratings.size
   result = []
   append_num = 0
   n.times do |i|
     j = i
     prev_num = 0
     counter = 1 + append_num
     if append_num == 1
       binding.pry
     end
     while j < (n - 1) do
       if ratings[j + 1] < ratings[j]
         if append_num != 0
           append_num = 0
           next
         end
         next if ratings[j + 1] == prev_num
         prev_num = ratings[j + 1]
         counter += 1
       elsif ratings[i] < ratings[i+1]
         append_num = 1
         break
       else
         append_num = 0
         break
       end
       j += 1
     end
     p "counter:#{counter}"
     result << counter
   end
   # p result
   result.inject(&:+)
end


def candy(ratings)
  n = ratings.size
  i = 0
  arr = [1] * n
  while i < (n - 1) do
    arr[i + 1] = arr[i] + 1 if (ratings[i + 1] > ratings[i])
    i += 1
  end
  i = n - 2
  while i >= 0 do
    arr[i] = [arr[i], arr[i + 1].to_i + 1].max if (ratings[i] > ratings[i + 1].to_i)
    i -= 1
  end
  p arr
  return arr.map(&:to_i).inject(&:+)
end



candy([1,2,2])
candy([1,2])
candy([4,2,1,8,4,2,2])