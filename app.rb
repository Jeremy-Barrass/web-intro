require 'sinatra'
require 'shotgun'
set :session_secret, 'super secret'

get '/' do
  "Hello World"
end

get '/secret' do
  "Maaaaagic"
end

get '/meh' do
  "Fuck this shit"
end
