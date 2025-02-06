class GNode
  attr_accessor :value, :adjacent_list, :visited
  
  def initialize(value)
    @value = value
    @adjacent_list = []
    @visited = false
  end
end

class Graph
  def dfs(node, traversal = [])
    node.visited = true
    traversal.append(node.value)

    node.adjacent_list.each do |ele|
      if !ele.visited
        dfs(ele, traversal)
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

# Call DFS starting from n1 and print the result
puts graph.dfs(n1).inspect
