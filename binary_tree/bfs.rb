
class Queue
  def initialize
    @items = []
  end

  def enqueue(item)
    @items.push(item)
  end

  def dequeue
    @items.shift
  end

  def peek
    @items.first
  end

  def empty?
    @items.size == 0
  end
end

class Node
  attr_accessor :value, :left, :right

  def initialize(value, left = nil, right = nil)
    @value = value
    @left = left
    @right = right
  end
end

class BFS
  def level_order(node)
    return [] if node.nil? 

    queue = Queue.new
    queue.enqueue(node)
    traversal = []

    while !queue.empty?
      current_node = queue.dequeue
      traversal.append(current_node.value)

      if current_node.left
        queue.enqueue(current_node.left)
      end

      if current_node.right
        queue.enqueue(current_node.right)
      end
    end

    traversal
  end
end
