require 'sinatra'

def iniciar_juego
	$palabra="maniobra".split('')
	$palabra_a_adivinar=Array.new
	$letraa=''
	$intentos=0
	$total_intentos=6
	$pista=''
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
	juego_ahorcado
	erb :juego
end

get '/perdedor' do
	erb :perdedor
end

post '/pedir_pista' do
	$pista=$palabra[rand($palabra.length) - 1]
	while $palabra_a_adivinar.include?($pista)
		$pista=$palabra[rand($palabra.length) - 1]
	end
		params[:letra]=$pista
		$intentos+=1
		juego_ahorcado
		erb :juego
end

def juego_ahorcado ()
	$letraa=params[:letra]
	if $palabra.include?($letraa)
		(0..($palabra.size-1)).each {|i| $palabra_a_adivinar[i]=$letraa unless $palabra[i]!=$letraa}
	else
		$intentos+=1
	end
	if($intentos==$total_intentos)
		redirect '/perdedor'
	end
end