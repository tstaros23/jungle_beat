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
  end

  it "can insert a value at a specific index in the list" do
    @list.append("plop")
    @list.append("suu")
    @list.prepend("dop")
    @list.append("deep")
    expect(@list.to_string).to eq("dop plop suu deep")
    @list.insert(2, "woo")
    expect(@list.to_string).to eq("dop plop woo suu deep")
  end

  it "finds first element by position param and second param specifies how many elements to return " do
    @list.append("deep")
    @list.append("woo")
    @list.append("shi")
    @list.append("shu")
    @list.append("blop")
    expect(@list.to_string).to eq("deep woo shi shu blop")
    expect(@list.find(2,1)).to eq("shi")
    expect(@list.find(1,3)).to eq("woo shi shu")
    expect(@list.find(5,1)).to eq(nil)
  end
end
