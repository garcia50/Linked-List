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

  def test_user_can_append_and_add_to_empty_list
    list.append("West")
    assert_equal "West", list.head.surname
  end

  def test_next_node_returns_nil
    list.append("West")
    assert_nil list.head.next_node
  end

  def test_count_returns_1
    list.append("West")
    assert_equal 1, list.count
  end

  def test_to_string_returns_string
    list.append("West")
    assert_equal "The West family", list.to_string
  end

  def test_count_returns_2_after_appending_new_name
    list.append("West")
    list.append("Hardy")
    assert_equal 2, list.count
  end

  def test_to_string_returns_string
    list.append("Rhodes")
    list.append("Hardy")
    assert_equal "The Rhodes family, followed by the Hardy family", list.to_string
  end

  def test_user_can_prepend_data_to_existing_list
    list.append("Brooks")
    list.append("Henderson")
    list.prepend("McKinney")
    assert_equal "The McKinney family, followed by the Brooks family, followed by the Henderson family", list.to_string
    assert_equal 3, list.count
  end
end

#Iteration3
# > require "./lib/linked_list"
# > list = LinkedList.new
# > list.append("Brooks")
# => <Node @surname="Brooks" @next_node=nil #5678904567890>
# > list.to_string
# => "The Brooks family"
# > list.append("Henderson")
# => <Node @surname="Henderson" @next_node=nil #5678904567890>
# > list.prepend("McKinney")
# => <Node @surname="McKinney" @next_node=<Node @surname="Brooks" ... > #5678904567890>
# > list.to_string
# => "The McKinney family, followed by the Brooks family, followed by the Henderson family"
# > list.count
# => 3
# > list.insert(1, "Lawson")
# => <Node @surname="Lawson" @next_node=<Node @surname="Brooks" ... > #5678904567890>
# > list.to_string
# => "The McKinney family, followed by the Lawson family, 
#     followed by the Brooks family, followed by the Henderson family"

#Iteration2
# > require "./lib/linked_list"
# > list = LinkedList.new
# => <LinkedList @head=nil #45678904567>
# > list.head
# => nil
# > list.append("Rhodes")
# => => <Node @surname="Rhodes" @next_node=nil #5678904567890>
# > list
# => <LinkedList @head=<Node @surname="Rhodes" ... > #45678904567>
# > list.head
# => <Node @surname="Rhodes" @next_node=nil #5678904567890>
# > list.head.next_node
# => nil
# > list.append("Hardy")
# => => <Node @surname="Hardy" @next_node=nil #5678904567890>
# > list.head.next_node
# => <Node @surname="Hardy" @next_node=nil #5678904567890>
# > list.count
# => 2
# > list.to_string
# => "The Rhodes family, followed by the Hardy family"



#Iteration 1
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







