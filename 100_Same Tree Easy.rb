# Definition for a binary tree node.
class TreeNode
    attr_accessor :val, :left, :right
    def initialize(val)
        @val = val
        @left, @right = nil, nil
    end
end

# @param {TreeNode} p
# @param {TreeNode} q
# @return {Boolean}
def is_same_tree(p, q)
  get_str(p) == get_str(q)
end

def get_str(p)
  if !p
    return ' '
  end
  return p.val.to_s + get_str(p.left) + get_str(p.right)
end

#76332