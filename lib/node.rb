class Node
  attr_accessor :surname, :next_node

  def initialize(surname, next_node = nil)
    @head = nil  
    @surname = surname
    @next_node = nil
  end

end
