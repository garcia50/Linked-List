require './lib/node'

class LinkedList

  attr_accessor :head, :count

  def initialize
    @head = nil
    @count = 0
  end

  def append(data)
    node = Node.new(data)
    @count += 1 
    if @head == nil
      @head = node
    else
      append_with_existing_nodes(@head, node)
    end
  end

  def append_with_existing_nodes(head, node)
    if head.next_node == nil 
      head.next_node = node
    else
      append_with_existing_nodes(head.next_node, node)
    end
  end

  def to_string
    if count == 1
      "The #{@head.surname} family"
    elsif count == 2      
      "The #{@head.surname} family, followed by the #{@head.next_node.surname} family"
    elsif count == 3
      "The #{@head.surname} family, followed by the #{@head.next_node.surname} family, followed by the #{@head.next_node.next_node.surname} family"
    elsif count == 4
      "The #{@head.surname} family, followed by the #{@head.next_node.surname} family, followed by the #{@head.next_node.next_node.surname} family, followed by the #{@head.next_node.next_node.next_node.surname} family"
    end
  end

  def prepend(data)
    prepend_node = Node.new(data)
    prepend_node.next_node = @head
    @head = prepend_node
    @count += 1
  end

  def insert(position, data, h = head, recursion_count = 0)
    if recursion_count == position - 1
      @count += 1
      insert_node = Node.new(data)
      insert_node.next_node = h.next_node
      h.next_node = insert_node 
    else
      recursion_count += 1
      insert(position, data, h.next_node, recursion_count)
    end
  end
end




























