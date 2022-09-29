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
    current_node = @head
    string_array = []
    if current_node.next_node.nil?
      @head.data
    else
      while !current_node.next_node.nil?
        string_array << current_node.data
        if !current_node.next_node.next_node.nil?
          
        # current_node = current_node.next_node
        require "pry"; binding.pry
      end
      return string_array
    end
    # if !head.next_node.nil? && !head.next_node.next_node.nil?
    #   head.data + (" #{head.next_node.data} #{head.next_node.next_node.data}")
    # elsif !head.next_node.nil? && head.next_node.next_node.nil?
    #   head.data + (" #{head.next_node.data}")
    # else
    #   head.data
    # end
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
