class Node
  attr_accessor :data, :next_node
  attr_reader :value

  def initialize(data, next_node = nil)
    @data = data
    @next_node = next_node
  end
end
