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

  it "can add multiple pieces of data to a list" do
    @list.append("doop")
    @list.append("deep")
    expect(@list.count).to eq(2)
    expect(@list.to_string).to eq("doop deep")
  end

  it "can prepend nodes to the beginning of the list" do
    @list.append("plop")
    expect(@list.to_string).to eq("plop")
    @list.append("suu")
    expect(@list.to_string).to eq("plop suu")
    @list.prepend("dop")
    expect(@list.to_string).to eq("dop plop suu")
    @list.append("deep")
    expect(@list.to_string).to eq("dop plop suu deep")
    expect(@list.count).to eq(4)
    @list.insert(1, "woo")
    expect(@list.to_string).to eq("dop woo plop suu")
  end
end
