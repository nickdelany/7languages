class Tree

	attr_accessor :nodes

	def initialize(nodes={})
		@nodes = nodes
	end

	def visit_all(&block)
    explicit_visit_all(nodes, &block)
	end

	def visit(&block)
    nodes.keys.each { |n| block.call n }
	end

  def explicit_visit_all(node, &block)
		node.each {|n, c|
      block.call n
      explicit_visit_all(c, &block)
    }
  end
end

ruby_tree = Tree.new({'grandpa' => { 'dad' => {'child 1' => {'leetle 1' => {}}, 'child 2' => {} }, 'uncle' => {'child 3' => {}, 'child 4' => {} } } } )

puts "Visiting a node"
ruby_tree.visit {|node| puts node}
puts

puts "visiting entire tree"
ruby_tree.visit_all {|node| puts node}
