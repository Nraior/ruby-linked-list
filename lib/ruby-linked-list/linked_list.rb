require_relative 'node'
class LinkedList
  def initialize
    @list = []
  end

  def append(value)
    node = Node.new(value)
    tail.next_node = node if tail
    @list.push(node)
  end

  def prepend(value)
    node = Node.new(value)
    @list.unshift(node)
    return unless size > 0

    node.next_node = at(1)
  end

  def size
    @list.length
  end

  def head
    @list.first
  end

  def tail
    @list.last
  end

  def at(index)
    @list[index]
  end

  def pop
    @list.pop
  end

  def contains?(value)
    @list.include?(value)
  end

  def find(value)
    @list.find_index(value)
  end

  def insert_at(value, index)
    node = Node.new(value, at(index))
    @list.insert(index, node)
    p at(index).value
    p at(index - 1).value

    at(index - 1)&.next_node = node if index > 1
  end

  def remove_at(index)
    at(index - 1)&.next_node = at(index + 1) || nil if index > 1
    @list.delete_at(index)
  end

  def to_s
    head.all_children
  end
end
