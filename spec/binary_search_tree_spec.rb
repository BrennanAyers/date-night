require 'spec_helper'
require './lib/binary_search_tree'

describe BinarySearchTree do
  it 'should initialize without a key' do
    tree = BinarySearchTree.new

    expect(tree.value).to be nil
    expect(tree.key).to be nil
    expect(tree.left).to be nil
    expect(tree.right).to be nil
    expect(tree.depth).to eq(0)
  end

  context 'methods' do
    before :each do
      @tree = BinarySearchTree.new
    end

    it 'should be able to insert a new node' do
      expect(@tree.insert(61, "Bill & Ted's Excellent Adventure")).to eq(0)

      expect(@tree.key).to eq("Bill & Ted's Excellent Adventure")
      expect(@tree.value).to eq(61)
    end

    it 'should be able to insert two nodes' do
      expect(@tree.insert(61, "Bill & Ted's Excellent Adventure")).to eq(0)
      expect(@tree.insert(16, "Johnny English")).to eq(1)

      expect(@tree.left.key).to eq("Johnny English")
      expect(@tree.left.value).to eq(16)
    end
  end
end
