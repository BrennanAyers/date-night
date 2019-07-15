require './lib/node'

class BinarySearchTree
  attr_reader :head, :left, :right

  def initialize
    @head = nil
    @left = nil
    @right = nil
  end

  def insert(value, key)
    if @head == nil
      @head = Node.new(value, key)
      0
    end
  end
end
