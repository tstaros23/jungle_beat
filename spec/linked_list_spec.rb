require "./lib/linked_list"

RSpec.describe LinkedList do
  before(:each) do
    @list = LinkedList.new
  end

  it "exists" do
    expect(@list).to be_a(LinkedList)
  end
  it "can add a piece of data to a list" do
    expect(@list.head).to eq(nil)
    @list.append("doop")
    expect(@list.head.next_node).to eq(nil)
    expect(@list.count).to eq(1)
    expect(@list.to_string).to eq("doop")
  end
end
