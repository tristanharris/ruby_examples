#Everything is an object

#Objects (obviously)
obj = Object.new
puts 'obj: ' + obj.inspect
puts '   : ' + obj.class.to_s
puts '   : ' + obj.class.ancestors.join(' -> ')
puts


#Strings
obj = 'hello'
puts 'hello: ' + obj.inspect
puts '     : ' + obj.class.to_s
puts '     : ' + obj.class.ancestors.join(' -> ')
puts


#Numbers
obj = 5
puts '5  : ' + obj.inspect
puts '   : ' + obj.class.to_s
puts '   : ' + obj.class.ancestors.join(' -> ')
puts


#Even classes
obj = Object
puts 'Object class: ' + obj.inspect
puts '            : ' + obj.class.to_s
puts '            : ' + obj.class.ancestors.join(' -> ')
puts

