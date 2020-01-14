require 'sinatra'
require 'sinatra/reloader' if development?
require './lib/CaesarCipher.rb'

puts "Server running in: http://localhost:4567" if development?

#% set root directory
set :root, File.dirname(__FILE__)


get '/' do
 
  erb :index , :locals => {'textOutput' => ''}

end

post '/' do
  text = params['text']
  shift =params['shift'].to_i
  output = caesarCipher(text,shift) if text
  
  erb :index , :locals => {'textOutput' => output}
end


