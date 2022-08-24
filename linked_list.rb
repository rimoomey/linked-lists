# frozen_string_literal: true

require_relative 'node'

# Linked List implementation for ruby
class LinkedList
  attr_reader :head, :tail, :size

  def initialize
    @size = 0
  end

  def prepend(value)
    @head = Node.new.value = value if @size.zero?

  end
end
