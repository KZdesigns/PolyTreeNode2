class PolyTreeNode

    def initialize(value)
        @value, @parent, @children = value, nil, []
    end

    def parent
        @parent
    end

    def children
        @children
    end

    def value
        @value
    end

    def parent=(parent)
        return if self.parent == parent

        if self.parent
            self.parent.children.delete(self)
        end

        @parent = parent

        self.parent.children << self unless self.parent.nil?
    end

    def add_child(child)
        child.parent = self
    end

    def remove_child(child)
        if !self.children.include?(child)
            raise "Node is not a child"
        end

        child.parent = nil
    end

end