#Classes

class MyClass

	def what_am_i
		'I am an object method'
		#Methods automatically return the result of the last code line
	end

end

obj = MyClass.new
puts 'Object method result: ' + obj.what_am_i
puts

#Classes can be reopened and added to
class MyClass

	def another_method
		'I am new around here'
	end

end

puts 'Another method result: ' + obj.another_method
puts


#Class level methods
class MyClass

	def self.what_am_i
		'I am a class method'
	end

end

puts 'Class method result: ' + MyClass.what_am_i
puts


#Object variables
class MyClass

	def set_var
		@my_var = 'Help! I am inside @my_var'
	end

	def get_var
		@my_var
	end

end

puts 'unset variable: ' + obj.get_var.inspect
obj.set_var
puts 'get_var: ' + obj.get_var
begin
	puts 'my_var:  ' + obj.my_var
rescue Exception => e
	#This will not work - you cannot access object variables directly
	puts e.message
end
puts


#Semantic getter
class MyClass

	def my_var
		@my_var
	end

end

puts 'my_var works now:  ' + obj.my_var
puts


#Semantic setter
class MyClass

	def my_var=(value)
		@my_var = value
	end

end

obj.my_var = 'I just set this'
puts 'Semantically set value: ' + obj.my_var
puts


#Easy variable access (just creates the equivalent two previous methods automatically)
class MyClass

	attr :my_var2, true

end

obj.my_var2 = 'Much easier'
puts 'Easier variable access: ' + obj.my_var2
puts


#Constructor
class MyClass

	def initialize(param)
		puts 'Object created with: ' + param.inspect
		puts
	end

end

MyClass.new('hello')

