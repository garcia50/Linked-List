require './lib/node'

class LinkedList

  attr_accessor :head, :count

  def initialize
    @head = nil
    @data = []
  end

  def append(data)
    node = Node.new(data)
    @head = node
  end

  # def to_string
    
  # end

end



