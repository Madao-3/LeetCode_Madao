# Definition for singly-linked list.
class ListNode
  attr_accessor :val, :next
  def initialize(val)
    @val = val
    @next = nil
  end
end

# @param {ListNode} head
# @return {ListNode}
def reverse_list(head)
  return nil unless head
  return head unless head.next
  unless head.next.next
    tmp = head.next
    tmp.next = head
    head.next = nil
    return tmp
  end

  f_head = head

  l = []
  while head.next
    l << head
    head = head.next
  end
  l << head
  new_head = ListNode.new(l.pop.val)
  first = new_head
  f_head = new_head
  while l.any?
    new_head.next = l.pop
    new_head = new_head.next
  end
  new_head.next = nil
  first
end

a4 = ListNode.new(4)
a3 = ListNode.new(3)
a3.next = a4
a2 = ListNode.new(2)
a2.next = a3
a1 = ListNode.new(1)
a1.next = a2

reverse_list(a1)