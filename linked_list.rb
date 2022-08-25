# frozen_string_literal: true

require_relative 'node'

# Linked List implementation for ruby
class LinkedList
  attr_reader :head, :tail, :size

  def initialize
    @size = 0
  end

  def prepend(value)
    new_head = Node.new(value)
    new_head.next_node = @head
    @head = new_head

    @tail = @head if size.zero?

    @size += 1
    nil
  end
end

l = LinkedList.new
l.append(0)
l.append(1)
p l.tail
