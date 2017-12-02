require 'minitest/autorun'
require 'minitest/emoji'
require './lib/linked_list'

class LinkedListTest < Minitest::Test

  attr_reader :list

  def setup
    @list = LinkedList.new
  end

  def test_instance_of_linked_list
    assert_instance_of LinkedList, list
  end

  def test_head_returns_nil
    assert_nil list.head
  end

  def test_append_method_adds_to_list
    list.append("West")
    assert_nil list.head.next_node
  end

end


# > require "./lib/linked_list"
# > list = LinkedList.new
# => <LinkedList @head=nil #45678904567>
# > list.head
# => nil
# > list.append("West")
# => <Node @surname="West" @next_node=nil #5678904567890>
# > list
# => <LinkedList @head=<Node @surname="West" ... > #45678904567>
# > list.head.next_node
# => nil
# > list.count
# => 1
# > list.to_string
# => "The West family"
