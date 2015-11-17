require 'sinatra'

	@palabra="maniobra"

get '/' do
	erb :index
end

get '/juego' do
	erb :juego
end

post '/juego' do
	@letter=params[:letra]
	erb :juego
end