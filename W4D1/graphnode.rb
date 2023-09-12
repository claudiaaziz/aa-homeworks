# require the set
require 'set'

class GraphNode
    attr_accessor :value, :neighbors

    def initialize(value)
        @value = value
        @neighbors = []
    end

    def self.bfs(starting_node, target_value)
        # start the queue with the starting node
        queue = [starting_node]
        # start a new set
        visited = Set.new
        # add the first node to visited
        visited.add(queue[0])

        # keep looping until the queue is empty
        until queue.empty?
            # get the current node
            current_node = queue.shift

            # if currentnode.value is == to target value return bc found target
            return current_node if current_node.value == target_value

            # loop through current nodes neighbors
            current_node.neighbors.each do |next_node|
                # if the next node has not been visited
                if !visited.include?(next_node)
                    # add it to the queue
                    queue << next_node
                    # put it in visitedd
                    visited.add(next_node)
                end
            end
        end

        # if no nodes value is found return nil
        nil
    end
end

a = GraphNode.new('a ')
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
