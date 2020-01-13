require 'sinatra'
require 'sinatra/reloader' if development?

puts "Server running in: http://localhost:4567" if development?

get '/' do
  erb :index

end
