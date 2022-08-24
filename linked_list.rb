# frozen_string_literal: true

require_relative 'node'

# Linked List implementation for ruby
class LinkedList
  attr_reader :head, :tail, :size

  def initialize
    @size = 0
  end

  def append(value)
    new_tail = Node.new(value)
    current_node = @head

    current_node = current_node.next_node until current_node.next_node.nil?

    current_node.next_node = new_tail
    @tail = new_tail

    @size += 1
    nil
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
