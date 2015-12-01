require 'sinatra'

def iniciar_juego
	$palabras=Array.new
	$palabras=["maniobra","aviacion","boeing","airbus","cessna","piloto","aeropuerto","despegar","aterrizar","umbral","helicoptero","pista"]
	$letras_incorrectas=Array.new
	$letras_correctas=Array.new
	$palabra_a_adivinar=Array.new
	$letraa=''
	$intentos=0
	$total_intentos=6
	$pista=''
	$puntos=0
end

get '/' do
	iniciar_juego
	$palabra=$palabras[rand(0..($palabras.length-1))].split('')
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

get '/ganador' do
	erb :ganador
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
		$letras_correctas.push($letraa)
		$puntos+=10
	else
		$letras_incorrectas.push($letraa)
		$puntos-=5
		$intentos+=1
	end
	if $intentos==$total_intentos and $palabra_a_adivinar.include? '_'
		redirect '/perdedor'
	elsif $palabra_a_adivinar.include? '_'

		return ""
	else
		redirect '/ganador'
	end
end