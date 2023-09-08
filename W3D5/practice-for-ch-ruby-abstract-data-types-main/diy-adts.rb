class Stack
    def initialize(stack)
        @stack = stack
    end

    def push(el)
        @stack.push(el)
    end

    def pop
        @stack.pop
    end

    def peek
        @stack[-1]
    end
end

stack = Stack.new([0,1,4])
# p stack.push(1)
# p stack.pop
# p stack.peek
# p stack

class Queue
    def initialize(queue)
        @queue = queue
    end

    def enqueue(ele)
        @queue.unshift(ele)
    end

    def dequeue
        @queue.shift
    end

    def peek
        @queue[0]
    end
end

queue = Queue.new([1,5,7])
# p queue.enqueue(100)
# p queue.dequeue
# p queue.peek
# p queue

class Map
    def initialize(map)
        @map = map
    end

    def set(key, value)
        @map.each do |arr|
            if arr[0] == key 
                arr[1] = value 
                return @map
            end
        end
        @map << [key, value]
    end

    def get(key)
        @map.each { |arr| return arr[1] if arr[0] == key }
    end

    def delete(key)
        @map.each_with_index { |arr, i| return @map[0...i] + @map[i+1..-1] if arr[0] == key }
    end

    def show

    end
end

map = Map.new([[1,5], [4,5], [7,8]])
p map.set(11, 4)
p map.set(4, 4)
p map.get(1)
p map.delete(4)
p map
