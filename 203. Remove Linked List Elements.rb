# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} head
# @param {Integer} val
# @return {ListNode}
def remove_elements(head, val)
  dummy = ListNode.new(0)
  dummy.next = head;
  head = dummy;
      
  while(head.next != null) do
    if head.next.val == val
      head.next = head.next.next
    else
      head = head.next
    end
  end
      
  return dummy.next;
end