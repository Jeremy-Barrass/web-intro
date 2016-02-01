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

get '/cat' do
  @sample = %w(Amigo Oscar Viking Giorgio).sample
  erb :index
end

# get '/cat' do
#   def sample_array
#   @sample = %w(Amigo Oscar Viking Giorgio).sample
#   end
# end
