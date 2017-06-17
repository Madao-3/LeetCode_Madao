# @param {Integer} num_rows
# @return {Integer[][]}
def generate(num_rows)
  return [] if num_rows == 0
  result = [[1]]
  return result if num_rows == 1
  row = [1, 1]
  result << row
  # 这时候就从[[1], [1, 1]] 开始
  (num_rows - 2).times do
    # 两个两个枚举相加
    row = row.each_cons(2).map { |a, b| a + b }
    # 首尾 加一个item 1
    row.insert(0, 1) << 1
    result << row
  end
  result
end

generate(5)