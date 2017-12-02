require './lib/node'

class LinkedList

  attr_accessor :head, :count

  def initialize
    @head = nil
    @data = []
    @count = 0
  end

  def append(data)
    node = Node.new(data)
    if @head == nil
      @head = node
    else
      @head.next_node = node
    end
    @count += 1
  end

  def to_string
    if count == 1
      "The #{@head.surname} family"
    elsif count > 1      
      "The #{@head.surname} family, followed by the #{@head.next_node.surname} family"
    end
  end

end
