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
    @head = node
    @count += 1
  end

  def to_string
    "The #{@head.surname} family"
  end

end



