require 'minitest/autorun'
require 'minitest/emoji'
require './lib/node'

class NodeTest < Minitest::Test

attr_reader :node

  def setup
    @node = Node.new
  end

  def test_instance_of_linked_list
    assert_instance_of Node, node    
  end

end