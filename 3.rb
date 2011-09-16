#Methods

class Person

	attr_reader :name

	def initialize(name='Will')
		@name = name
	end

end

#Default parameters
default = Person.new
puts 'Default name: ' + default.name
puts

#Method chaining
captain = Person.new('Kirk')
puts 'Name: ' + captain.name
puts 'Length: ' + captain.name.length.to_s
puts

#Infix methods
class Person

	def +(other)
		Person.new(@name + other)
	end

end

captain2 = captain + ', James T'
puts 'Infix: ' + captain2.name
puts

#Blocks
class Person

	def talk
		'(' + yield(@name) + ')'
	end

end

puts 'Block: ' + captain.talk {|moniker| 'Hello ' + moniker }
puts

#Splat - variable number of parameters
class Person

	def eat(*foods)
		foods.each do |food|
			puts 'I eat ' + food
		end
	end

end

captain.eat('spam', 'eggs', 'Regulan bloodworms')
puts


