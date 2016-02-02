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

get '/random-cat' do
  @sample = %w(Amigo Oscar Viking Giorgio).sample
  erb :index
end

get '/named-cat' do
  @name = params[:name]
  p params[:name]
  erb :index
end

post '/named-cat' do
  @name = params[:name]
  p params[:name]
  erb :index
end

get '/name-the-cat' do
  @name = params[:name]
  p params[:name]
  erb :form
end

post '/name-the-cat' do
  @name = params[:name]
  p params[:name]
  erb :form
end

# get '/cat' do
#   def sample_array
#   @sample = %w(Amigo Oscar Viking Giorgio).sample
#   end
# end
