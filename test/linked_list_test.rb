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

end







