require 'minitest/autorun'
require 'minitest/emoji'
require './lib/node'

class NodeTest < Minitest::Test

  attr_reader :node

  def setup
    @node = Node.new("Burke")
  end

  def test_instance_of_linked_list
    assert_instance_of Node, node    
  end

  def test_node_has_a_surname
    assert_equal "Burke", node.surname
  end

  def test_next_node_returns_nil
    assert_nil node.next_node
  end

end
