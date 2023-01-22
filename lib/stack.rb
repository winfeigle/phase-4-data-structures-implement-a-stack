# your code here
class Stack

    def initialize(limit = nil)
        @stack = []
        @limit = limit
    end

    def push(val)
        raise "Stack Overflow" if full?

        @stack.push(val)
    end

    def pop
        @stack.pop
    end

    def peek
        @stack.last
    end

    def size
        @stack.length
    end

    def empty?
        @stack.empty?
    end

    def full?
        # making sure limit exists, first.. then checking size
        @limit && @stack.size == @limit
    end

    def search(val)
        @stack.each_with_index do |item, index|
            return size - index - 1 if val == item
        end

        # This is the else...
        -1
    end


end
