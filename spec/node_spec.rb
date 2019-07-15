require 'spec_helper'
require './lib/node'

describe Node do
  it 'should initialize' do
    node = Node.new(61, "Bill & Ted's Excellent Adventure")

    expect(node.key).to eq("Bill & Ted's Excellent Adventure")
    expect(node.value).to eq(61)
    expect(node.left).to be nil
    expect(node.right).to be nil
  end
end
