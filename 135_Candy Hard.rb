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
     append_num = 0
     while j < (n - 1) do
       if ratings[j + 1] < ratings[j]
         next if ratings[j + 1] == prev_num
         prev_num = ratings[j + 1]
         counter += 1
       elsif ratings[i] < ratings[i+1] && i + 1 == n
         append_num = 1
         break
       else
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

# candy([1,2,2])
# candy([1,2])
candy([4,2,1,8,4,2,2])