require 'set'

class GraphNode
    attr_accessor :value, :neighbors

    def initialize(value)
        @value = value
        @neighbors = []
    end

    def self.bfs(starting_node, target_value)
        queue = [starting_node]
        visited = Set.new
        visited.add(queue[0])

        until queue.empty?
            current_node = queue.shift

            return current_node if current_node.value == target_value

            current_node.neighbors.each do |next_node|
                if !visited.include?(next_node)
                    queue << next_node
                    visited.add(next_node)
                end
            end
        end

        nil
    end
end

a = GraphNode.new('a')
b = GraphNode.new('b')
c = GraphNode.new('c')
d = GraphNode.new('d')
e = GraphNode.new('e')
f = GraphNode.new('f')

a.neighbors = [b, c, e]
c.neighbors = [b, d]
e.neighbors = [a]
f.neighbors = [e]

p GraphNode.bfs(a, 'b')
p GraphNode.bfs(a, 'f')
