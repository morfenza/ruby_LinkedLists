# frozen_string_literal: true

require_relative 'node'

# Class defininf the linked lists, which uses nodes
class LinkedList
  attr_accessor :head, :tail

  def initialize
    self.head, self.tail = Node.new
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

  def to_s
    current_node = head
    loop do
      if current_node.nil?
        print "nil\n"
        break
      end

      print "(#{current_node.value}) -> "
      current_node = current_node.next_node
    end
  end
end

list = LinkedList.new

list.to_s
