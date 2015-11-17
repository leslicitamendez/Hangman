require 'sinatra'

def iniciar_juego
	$palabra="maniobra".split('')
	$palabra_a_adivinar=Array.new
	$letraa=''
	$intentos=0
	$total_intentos=6
end

get '/' do
	iniciar_juego
	$palabra.each {$palabra_a_adivinar.push('_')}
	erb :index
end

get '/juego' do
	erb :juego
end

post '/juego' do
	$letraa=params[:letra]
	erb :juego
end