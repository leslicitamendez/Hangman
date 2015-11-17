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
	if $palabra.include?($letraa)
		(0..($palabra.size-1)).each {|i| $palabra_a_adivinar[i]=$letraa unless $palabra[i]!=$letraa}
	else
		$intentos+=1
	end
	if($intentos==$total_intentos)
		redirect '/perdedor'
	end
	erb :juego
end

get '/perdedor' do
	erb :perdedor
end