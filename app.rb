require 'sinatra'

get '/' do
	erb :index
end

post '/bienvenida' do
	"Hola "+params[:nombre]
end