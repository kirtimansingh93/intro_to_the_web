require 'sinatra'
require 'shotgun'
set :session_secret, 'super secret'
get '/' do
  "Hello World"
end

get '/secret' do
	"This should be a secret"
end

get '/random_cat' do
  @name = %w(Amigo, Oscar, Viking).sample
  erb(:index)
end

get '/form' do
  erb(:forms)
end

post '/named_cat' do
  p params
  @name = params[:name]
  @food = params[:food]
  erb(:index)
end
