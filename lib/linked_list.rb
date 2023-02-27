# frozen_string_literal: true

require_relative 'node'

# Class defininf the linked lists, which uses nodes
class LinkedList
  attr_accessor :head, :tail

  def initialize(value, next_node)
    self.head, self.tail = Node.new(value, next_node)
  end

  def append(value); end

  def prepend(value); end

  def size; end

  def at(index); end

  def insert_at(value, index); end

  def remove_at(index); end

  def pop; end

  def contains?(value); end

  def find(value); end

  def to_s; end
end

