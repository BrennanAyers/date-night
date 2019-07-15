require 'spec_helper'
require './lib/node'

describe Node do
  it 'should initialize' do
    tree = Node.new(61, "Bill & Ted's Excellent Adventure")

    expect(tree.head).to eq({"Bill & Ted's Excellent Adventure" => 61})
    expect(tree.left).to be nil
    expect(tree.right).to be nil
  end
end
