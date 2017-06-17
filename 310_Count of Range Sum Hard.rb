# @param {Integer[]} nums
# @param {Integer} lower
# @param {Integer} upper
# @return {Integer}
def count_range_sum(nums, lower, upper)
  return 0 if nums.size == 0
  tree = SegmentTree.new(nums)
  ans = 0
  nums = nums.sort
  sum = nums.last
    i = nums.size()
  while i >= 0 do
    # tree.update(sum);
    sum -= nums[i];
    ans += tree.sum(lower + sum,upper + sum);
  end
  return ans;
end

class SegmentTree
  attr_reader :value, :data

  def initialize(data)
    @data = data.empty? ? [0] : data.clone
    node_count = 2 * 2**( Math.log(@data.count,2).to_i + 1 )
    @value = [0]*node_count
    build(1, 0, @data.count-1)
  end

  def query(i, j)
    recur_query(1, 0, data.count-1, i, j)
  end

  def update(i, val)
    gap = val - data[i]
    data[i] = val
    node = 1
    b, e = 0, data.count-1
    loop do
      value[node] += gap
      break if b == e && b == i
      mid = (b+e)/2
      if i <= mid
        e = mid
        node = 2*node
      else
        b = mid + 1
        node = 2*node + 1
      end
    end
  end

  private

  def build(node, b, e)
    if b == e
      return value[node] = data[b]
    end
    mid = (b+e)/2
    value[node] = build(2*node, b, mid) + build(2*node+1, mid+1,  e)
  end

  def recur_query(node, b, e, i, j)
    if i > e or j < b
      return 0
    end
    if i <= b && e <= j
      return value[node]
    end
    mid = (b+e)/2
    left  = recur_query(2*node,   b,      mid,  i, j)
    right = recur_query(2*node+1, mid+1,  e,    i, j)
    left + right
  end
end