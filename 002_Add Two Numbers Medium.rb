# Definition for singly-linked list.
class ListNode
  attr_accessor :val, :next
  def initialize(val)
    @val = val
    @next = nil
  end
end

# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
def add_two_numbers(l1, l2)
  list = []
  addition_number = 0
  while (l1 || l2) || addition_number != 0
    if (!l1 && !l2) && addition_number != 0
      list << addition_number
      addition_number = 0
      next
    end
    current = (l1 ? l1.val : 0) + (l2 ? l2.val : 0) + addition_number
    addition_number = 0
    if current >= 10
      current = current % 10
      addition_number = 1
    end
    list << current
    l1 = l1 ? l1.next : nil
    l2 = l2 ? l2.next : nil
  end
  current_node = nil
  list.reverse.each do |i|
    node = ListNode.new(i)
    if current_node
      node.next = current_node
    end
    current_node = node
  end
  current_node
end

l123 = ListNode.new(3)
l12 = ListNode.new(4)
l12.next =l123
l1 = ListNode.new(2)
l1.next =l12

l223 = ListNode.new(4)
l22 = ListNode.new(6)
l22.next = l223
l2 = ListNode.new(5)
l2.next = l22

add_two_numbers(l1, l2)

