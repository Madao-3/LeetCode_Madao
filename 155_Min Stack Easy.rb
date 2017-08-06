class MinStack

=begin
    initialize your data structure here.
=end
    def initialize()
      @list = []
      @min_list = []
    end


=begin
    :type x: Integer
    :rtype: Void
=end
    def push(x)
      if @list.empty?
        @list << x
        @min_list << x
      else
        @list << x
        @min_list << x if x <= @min_list.last
      end
    end
=begin
    :rtype: Void
=end
    def pop()
      if (@list.last == @min_list.last)
        @min_list.pop
      end
      @list.pop
    end


=begin
    :rtype: Integer
=end
    def top()
      @list.last
    end


=begin
    :rtype: Integer
=end
    def get_min()
      @min_list.last
    end
  end

# Your MinStack object will be instantiated and called as such:
# obj = MinStack.new()
# obj.push(x)
# obj.pop()
# param_3 = obj.top()
# param_4 = obj.get_min()