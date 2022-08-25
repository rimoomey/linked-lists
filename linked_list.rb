# frozen_string_literal: true

require_relative 'node'

# Linked List implementation for ruby
class LinkedList
  attr_reader :head, :size

  def initialize
    @size = 0
  end

  def prepend(value)
    new_head = Node.new(value)
    new_head.next_node = @head
    @head = new_head

    @size += 1
    nil
  end

  def to_s
    str = ''
    current = @head
    until current.nil?
      str += "(#{current.value}) => "
      current = current.next_node
    end
    str += 'nil'
  end
end

l = LinkedList.new
l.prepend(0)
l.prepend(1)
puts l
