# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @return {Integer[]}
def inorder_traversal(root)
  root ? (inorder_traversal(root.left).to_a + [root.val] + inorder_traversal(root.right).to_a).flatten.compact : []
end
