class Node
  attr_accessor :next_node
  attr_reader :value

  def initialize(value = nil, next_node = nil)
    @value = value
    @next_node = next_node
  end

  def to_s
    next_text = next_node || 'nil'
  end

  def all_children
    p value
    "( #{value} ) -> #{next_node&.all_children || 'nil'}"
  end
end
