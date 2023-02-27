# frozen_string_literal: true

require_relative 'node'

# Class defininf the linked lists, which uses nodes
class LinkedList
  attr_accessor :head, :tail

  def append(value)
    tmp = Node.new(value)

    if head.nil?
      self.head = tmp
      self.tail = tmp
      return
    end

    tail.next_node = tmp
    self.tail = tmp
  end

  def prepend(value)
    tmp = Node.new(value)

    if head.nil?
      self.head = tmp
      self.tail = tmp
      return
    end

    tmp.next_node = head
    self.head = tmp
  end

  def size
    nodes = 0
    current_node = head

    loop do
      return nodes if current_node.nil?

      nodes += 1
      current_node = current_node.next_node
    end
  end

  def at(index)
    node_index = 0
    current_node = head

    until node_index == index
      current_node = current_node.next_node
      node_index += 1
    end

    current_node
  end

  def insert_at(value, index); end

  def remove_at(index); end

  def pop
    current_node = head

    current_node = current_node.next_node until current_node.next_node == tail

    current_node.next_node = nil
    self.tail = current_node
  end

  def contains?(value)
    current_node = head

    return false if head.nil?

    until current_node.nil?
      return true if current_node.value.eql? value

      current_node = current_node.next_node
    end

    false
  end

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

list.append(10)
list.append('Mermas')
list.append(20)

list.prepend(5)

list.to_s

puts "\nThere are #{list.size} nodes in this list!"

puts "\nThe node at index 2 is: "
p list.at(2)

list.pop

puts
list.to_s

puts "\nThe list contains the value 10? #{list.contains?(10)}"
puts "The list contains the value 30? #{list.contains?(30)}"

puts "\nList head: "
p list.head

puts "\nList tail: "
p list.tail
