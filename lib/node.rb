class Node
  attr_reader :head, :left, :right
  
  def initialize(value, key)
    @head = {key => value}
    @left = nil
    @right = nil
  end
end
