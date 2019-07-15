require 'spec_helper'
require './lib/binary_search_tree'

describe BinarySearchTree do
  it 'should initialize without a key' do
    tree = BinarySearchTree.new

    expect(tree.key).to be nil
    expect(tree.left).to be nil
    expect(tree.right).to be nil
  end
end
