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
    actual = "The McKinney family, followed by the Brooks family, followed by the Henderson family"
    assert_equal actual, list.to_string

    assert_equal 3, list.count
  end

  def test_user_can_insert_node_in_desired_place
    list.append("McKinney")
    list.append("Brooks")
    list.append("Henderson")
    list.insert(1, "Lawson")
    actual = "The McKinney family, followed by the Lawson family, followed by the Brooks family, followed by the Henderson family" 
    assert_equal actual, list.to_string
  end
end


# Iteration4
# > list.to_string
# => "The McKinney family, followed by the Lawson family, followed by the Brooks family, followed by the Henderson family"
# > list.find(2, 1)
# => "The Brooks family"
# > list.find(1, 3)
# => "The Lawson family, followed by the Brooks family, followed by the Henderson family"
# > list.includes?("Brooks")
# => true
# > list.includes?("Chapman")
# => false
# > list.pop
# The Henderson family has died of dysentery
# => <Node surname="Henderson" next_node=nil #5678904567890>
# > list.pop
# The Brooks family has died of dysentery
# => <Node surname="Brooks" next_node=nil #5678904567890>
# > list.to_string
# => "The McKinney family, followed by the Lawson family"















