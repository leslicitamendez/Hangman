require 'sinatra'

get '/' do
	erb :index
end

get '/juego' do
	erb :juego
end