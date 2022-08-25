# frozen_string_literal: false

require_relative 'node'

# Linked List implementation for ruby
class LinkedList
  attr_reader :head, :size

  def initialize
    @size = 0
  end

  def append(value)
    new_tail = Node.new(value)
    current = @head
    current = current.next_node until current.next_node.nil?
    current.next_node = new_tail

    @size += 1
    nil
  end

  def prepend(value)
    new_head = Node.new(value)
    new_head.next_node = @head
    @head = new_head

    @size += 1
    nil
  end

  def tail
    current = @head
    current = current.next_node until current.next_node.nil?
    current
  end

  def at(index)
    current_index = 0
    current_node = @head
    while current_index < index
      return 'Index out of bounds' if current_index >= @size

      current_node = current_node.next_node
      current_index += 1
    end
    current_node
  end

  def pop
    return if @size.zero?

    if @size == 1
      node_to_pop = @head
      @head = nil
      @size = 0
      return node_to_pop
    end

    current_index = 0
    current = @head
    while current_index < @size - 2
      current = current.next_node
      current_index += 1
    end
    node_to_pop = current.next_node
    current.next_node = nil
    @size -= 1

    node_to_pop
  end

  def to_s
    str = ''
    current = @head
    until current.nil?
      str += "(#{current.value}) => "
      current = current.next_node
    end
    str << 'nil'
  end
end

l = LinkedList.new
l.prepend(0)
l.prepend(1)
puts l
l.append(5)
puts l
puts l.size
puts l.tail.value
p l.at(2).value
p l.at(1).value
l.pop
puts l
l.pop
puts l
l.pop
puts l
