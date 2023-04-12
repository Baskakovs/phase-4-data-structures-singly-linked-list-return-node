require_relative './node'
require "byebug"
class LinkedList
  attr_accessor :head

  def initialize
    @head = nil
  end

  def nth_from_end(num)
    last_node = head
    length = 0

    # Calculate the length of the linked list
    while last_node
      length += 1
      last_node = last_node.next_node
    end

    last_node = head
    pos = 1

    if num == 1 && !head.nil?
      while last_node.next_node
        last_node = last_node.next_node
      end
      last_node.value
    elsif num < 1
      nil
    elsif num == length
      head.value
    elsif @head.nil?
      nil
    elsif num != 1 && num < length
      last_node = head
      while length - pos != length - num
        last_node = last_node.next_node
        pos += 1
      end
      last_node.value
    end
  end
end
# byebug
# 0