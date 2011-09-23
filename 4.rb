#Modules

#Module as a function bag
module Speach

	def self.hello
		'Hello'
	end

end

puts 'Say hello: ' + Speach.hello
puts


#As a class mixin
module Speach

	def hi
		'Hi'
	end

	def greet
		"Hello, my name is #{name}"
	end

end

class Person
	include Speach

	attr :name

	def initialize(name)
		@name = name
	end

end

jeff = Person.new('Jeff')
puts 'Jeff says hi: ' + jeff.hi
puts 'Jeffs introduction: ' + jeff.greet
puts

#As an object extension
obj = Object.new
obj.extend Speach
puts 'This object can speak: ' + obj.hi
puts

#Standard library mixins
class Person
	include Comparable

	def <=>(other)
		name.length <=> other.name.length
	end

end

tom = Person.new('Tom')
fred = Person.new('Fred')
puts 'Tom < Jeff: ' + (tom < jeff).inspect
puts 'Fred < Jeff: ' + (fred < jeff).inspect
puts

