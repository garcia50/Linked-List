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
    family_list = "The #{@head.surname} family"
    current_node = @head.next_node
    until current_node == nil do
      family_list << (", followed by the #{current_node.surname} family")
      current_node = current_node.next_node
    end
    family_list
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

  def find(position, family_count, h = head, recursion_count = 0)
    position_count = 0
    @current_node = @head
    until position_count == position do
      @current_node = @head.next_node
      position_count += 1
    end
    fam_list = "The #{@current_node.surname} family"
    until recursion_count == family_count - 1 do
      @current_node = @current_node.next_node
      fam_list << (", followed by the #{@current_node.surname} family")
      recursion_count += 1
    end
    fam_list
  end

end



























