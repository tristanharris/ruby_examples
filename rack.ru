#gem install shotgun
#shotgun rack.ru

run lambda {|env|
	puts 'Do some work'
	[200, {'Content-Type' => 'text/plain'}, ['Output the page']]
}
