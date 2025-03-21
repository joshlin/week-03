require 'rubygems'
require 'sinatra'

# Sinatra has some good documentation
# 
# @see http://www.sinatrarb.com/
# @see http://www.sinatrarb.com/intro.html
# 
# Give it a read and see what fun things you can put together. Don't feel like
# you need to go over everything.
# 

get '/' do
  "<h1>Hello World</h1>"
end

get '/hello/:name' do  
  "Hello #{params[:name]}"
end 

get '/form' do  
   erb :form  
end  

post '/form' do  
      "You post: '#{params[:message]}'"  
end  

get '/admin' do
  %{
    <h1>Admin Page</h1>
    <h2>This is the stuff of admins</h2>
  }
end

not_found do  
  halt 404, 'page not found'  
end 

