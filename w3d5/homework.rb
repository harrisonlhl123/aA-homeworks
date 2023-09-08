class Stack
    attr_reader :stack
    def initialize
      @stack = []
    end
  
    def push(ele)
      stack.push(ele)
    end
  
    def pop
      stack.pop
    end
  
    def peek
        stack.last
    end
end

class Queue
    attr_reader :queue
    def initialize
        @queue = []
    end

    def enqueue(el)
        queue.push(el)
    end
    
    def dequeue
        queue.shift
    end

    def peek
        queue.first
    end
end

class Map
    attr_reader :map

    def initialize
        @map = []
    end

    def set(key, value)
        keys = []

        map.each do |sub_arr|
            keys << sub_arr[0]
        end

        if !keys.include?(key)
            map << [key, value]
        end
    end

    def get(key)
        map.each do |sub_arr|
            if sub_arr[0] == key
                return sub_arr[1]
            end
        end

        return nil
    end

    def delete(key)
        map.each do |sub_arr|
            if sub_arr[0] == key
                map.delete(sub_arr)
            end
        end
    end

    def show
        p map
    end

end