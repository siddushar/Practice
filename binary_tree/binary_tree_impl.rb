class Node 
  attr_accessor :value, :right, :left

  def initialize(value, left, right)
    @value = value
    @left = nil
    @right = nil
  end
end

class BinaryTree

  def initialize
    @root = nil
  end

  def insert(value)
    insert_value(@root, value)
  end

  def search(value)
    search_value(@root, value)
  end

  private

  def insert_value(node, value)
    return Node.new(value) if node.nil?

    if value < node.value
      node.left = insert_value(node.left, value)
    else
      node.right = insert_value(node.right, value)
    end
    node
  end

  def search_value(node, value)
    return false if node.nil?

    if value == node.value
      true
    elsif value < node.value
      search_value(node.left, value)
    else
      search_value(node.right, value)
    end
  end
end

bst = BinaryTree.new
bst.insert(50)
bst.insert(30)
bst.insert(70)
bst.insert(20)
bst.insert(40)
bst.insert(60)
bst.insert(80)

puts bst.search(40)
puts bst.search(25)
