# Definition for singly-linked list.
# class ListNode
#   attr_accessor :val, :next
#   def initialize(val, _next)
#     @val = val
#     @next = _next
#   end
# end

# @param {ListNode} head
# @return {ListNode}
def swap_pairs(head)
  temp = head
  while temp && temp.next
    head_temp = temp.val
    next_temp = temp.next.val
    temp.val = next_temp
    temp.next.val = head_temp
    temp = temp.next.next
  end
  head
end
