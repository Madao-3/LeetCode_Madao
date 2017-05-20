# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} head
# @return {Boolean}
def is_palindrome(head)
  return true if !head
  return true unless head.next
  arr = [head.val]
  while head.next do
    head = head.next
    arr << head.val
  end
  arr == arr.reverse
end
