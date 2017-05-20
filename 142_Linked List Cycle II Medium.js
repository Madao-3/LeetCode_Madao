var detectCycle = function(head) {
  var fast = head
     ,slow = head
     ,entry = head
  if(!head){ return null; }
  if(!head.next || !head.next.next) {
    return null;
  }
  while (fast.next && fast.next.next) {
    slow = slow.next;
    fast = fast.next.next;
    if (slow == fast) {
      while(slow != entry) {
        slow  = slow.next;
        entry = entry.next;
      }
      return entry;
    }
  }
  return null
};

// function ListNode(val) {
//     this.val = val;
//     this.next = null;
// }
