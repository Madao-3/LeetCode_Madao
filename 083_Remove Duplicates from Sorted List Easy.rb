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
def delete_duplicates(head)
  return nil unless head
  return head unless head.next
  dummy = ListNode.new(nil)
  dummy.next = head
  prev = head
  while prev.next do
    if prev.val == prev.next.val
      prev.next = prev.next.next
    else
      prev = prev.next
    end
  end
  return dummy.next
end
delete_duplicates ListNode.new(1)