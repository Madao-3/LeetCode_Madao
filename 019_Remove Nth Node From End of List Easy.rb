# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} head
# @param {Integer} n
# @return {ListNode}
def remove_nth_from_end(head, n)
  d = ListNode.new(0)
  d.next = head
  f = d
  n.times do
    f = f.next
  end
  s = d
  while f.next do
    s = s.next
    f = f.next
  end
  s.next = s.next.next
  return d.next
end