class GNode
  attr_accessor :value, :adjacent_list, :visited
  
  def initialize(value)
    @value = value
    @adjacent_list = []
    @visited = false
  end
end

class Graph
  def bfs(node)
    queue = []
    queue.append(node)
    node.visited = true
    traversal = []

    while queue.length > 0
      actual_node = queue.shift
      traversal.append(actual_node.value)

      actual_node.adjacent_list.each do |element|
        if !element.visited
          queue.append(element)
          element.visited = true
        end
      end
    end
    
    return traversal
  end
end

# Create nodes
n1 = GNode.new("A")
n2 = GNode.new("B")
n3 = GNode.new("C")
n4 = GNode.new("D")
n5 = GNode.new("E")
n6 = GNode.new("F")
n7 = GNode.new("G")

# Define adjacency
n1.adjacent_list.append(n2)
n1.adjacent_list.append(n3)
n1.adjacent_list.append(n4)
n2.adjacent_list.append(n5)
n2.adjacent_list.append(n6)
n2.adjacent_list.append(n7)

# Create the graph
graph = Graph.new

# Call BFS and print the result
puts graph.bfs(n1).inspect
