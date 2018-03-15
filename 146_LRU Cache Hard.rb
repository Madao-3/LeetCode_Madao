class LRUCache
  attr_accessor :capacity

  def initialize(capacity = 4)
    @data = {}
    @capacity = capacity
  end

  def put(key, value)
    @data.store key, [0, value]
    update_keys
    remove_old if @data.size > @capacity
  end

  def get(key)
    if value = @data[key]
      reload(key)
      update_keys
    end
    value ? value[1] : -1
  end

  private

  def reload(key)
    @data[key][0] = 0
  end

  def remove_old
    m = @data.values.map{ |v| v[0] }.max
    @data.reject!{ |k,v| v[0] == m }
  end

  def update_keys
    @data.each{ |k,v| @data[k][0] += 1 }
  end
end

# Your LRUCache object will be instantiated and called as such:
# obj = LRUCache.new(capacity)
# param_1 = obj.get(key)
# obj.put(key, value)


