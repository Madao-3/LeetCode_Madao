class Node
  attr_reader :data
  attr_accessor :term, :nexts
  def initialize(data)
    @data = data
    @nexts = []
    @term = false
  end

  def insert(char)
    return get(char) if have?(char)

    next_node = Node.new(char)
    @nexts << next_node
    next_node
  end

  def have?(char)
    @nexts.each do |c|
      return true if c.data == char
    end
    false
  end

  def get(char)
    @nexts.each do |c|
      return c if c.data == char
    end
    false
  end
end

class Trie
  attr_accessor :root
  
  def initialize()
    @root = Node.new(nil)
  end
  def insert(word)
    node = @root
    word.split('').each do |c|
      child = node.insert(c)
      node = child
    end
    node.term = true
  end
  def search(word)
    node = @root
    word.split('').each do |c|
      return false unless node.have?(c)
      node = node.get(c)
    end
    return node.term == true
  end
  def starts_with(prefix)
    node = @root
    prefix.split('').each do |c|
      return false unless node.have?(c)
      node = node.get(c)
    end
    return true
  end
end

# Your Trie object will be instantiated and called as such:
# obj = Trie.new()
# obj.insert(word)
# param_2 = obj.search(word)
# param_3 = obj.starts_with(prefix)