require './lib/node'

class LinkedList
  attr_accessor :head

  def initialize
    @head = nil
  end

  def append(data)
    if self.head.nil?
      @head = Node.new(data)
    else
      current_node = @head
      new_node = Node.new(data)
      while !current_node.next_node.nil?
        current_node = current_node.next_node
      end
      current_node.next_node = new_node
    end
  end

  def count
    if self.head.nil?
      count = 0
    else
      count = 1
      current_node = @head
      while !current_node.next_node.nil?
        current_node = current_node.next_node
        count += 1
      end
      count
    end
  end

  def to_string
    array = []
    current_node = @head

    if self.head.nil?
      return array
    else
      while current_node.next_node != nil
        array << current_node.data
        current_node = current_node.next_node
      end
      array << current_node.data
    end
      array.join(" ")
  end

  def prepend(data)
    if self.head.nil?
      @head = Node.new(data)
    else
      current_head = Node.new(data)
      current_head.next_node = @head
      @head = current_head
    end
  end

  # def insert(position, data)
  #
  # end
end
