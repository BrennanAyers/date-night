require 'spec_helper'
require './lib/binary_search_tree'

describe BinarySearchTree do
  it 'should initialize without a key' do
    tree = BinarySearchTree.new

    expect(tree.key).to be nil
    expect(tree.left).to be nil
    expect(tree.right).to be nil
  end

  context 'methods' do
    before :each do
      @tree = BinarySearchTree.new
    end

    it 'should be able to insert a new node' do
      expect(@tree.insert(61, "Bill & Ted's Excellent Adventure")).to eq(0)

      expect(@tree.key).to eq({"Bill & Ted's Excellent Adventure": 61})
    end
  end
end
