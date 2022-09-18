require './lib/node'

RSpec.describe Node do

  it "exists and has attributes" do
    node = Node.new("plop")
    node.data

    expect(node).to be_a Node
    expect(node.data).to eq("plop")
    expect(node.next_node).to eq(nil)
  end
end
