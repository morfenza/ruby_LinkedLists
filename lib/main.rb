# frozen_string_literal: true

require_relative 'linked_list'

# File to run tests
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

puts "\nWhats the index of the node with value 10?"
p list.find(10)
puts "\nWhats the index of the node with value 40?"
p list.find(40)

puts "\nList head: "
p list.head

puts "\nList tail: "
p list.tail
