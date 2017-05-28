file '/var/www/html/index.html' do
     content 'Hello world'
end

webnodes=search('node', 'role:web')
webnodes.each do|node|
   puts node
end

