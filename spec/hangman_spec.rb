require './lib/hangman.rb'

describe Hangman do

	before :each do
		@hangman = Hangman.new
	end

	it 'escoger palabra aleatoria' do
		@hangman.juego()
		word = @hangman.palabra
		words = @hangman.palabras
		expect(words).to include(word)
	end

	it 'verificar letra correcta' do
		@hangman.juego()
		word = @hangman.palabra
		result = @hangman.verificar_letra(palabra[0])
		expect(result).to eq true
	end

	it 'verificar letra incorrecta'
		@hangman.juego()
		word = @hangman.palabra
		result = @hangman.verificar_letra('x')
		expect(result).to eq false
	end
end