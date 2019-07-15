class BinarySearchTree
  attr_reader :key, :value, :left, :right, :depth

  def initialize(value = nil, key = nil, depth = 0)
    @key = key
    @value = value
    @left = nil
    @right = nil
    @depth = depth
  end

  def insert(new_value, new_key)
    if @value == nil && @key == nil
      @value = new_value
      @key = new_key
      @depth
    elsif new_value < @value
      insert_left(new_value, new_key)
    elsif new_value > @value
      insert_right(new_value, new_key)
    end
  end

  private

  def insert_left(new_value, new_key)
    if @left
      @left.insert(new_value, new_key, @depth + 1)
    else
      @left = BinarySearchTree.new(new_value, new_key, @depth + 1)
    end
    @left.depth
  end

  def insert_right(new_value, new_key)
    if @right
      @right.insert(new_value, new_key, @depth + 1)
    else
      @right = BinarySearchTree.new(new_value, new_key, @depth + 1)
    end
    @right.depth
  end
end
