require_relative 'ruby-linked-list/linked_list'
list = LinkedList.new

list.append('dog')
list.append('cat')
list.append('parrot')
list.append('hamster')
list.append('snake')
list.append('turtle')
list.insert_at('abra', 0)
list.remove_at(0)

puts list
