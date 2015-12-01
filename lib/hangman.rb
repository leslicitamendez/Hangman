class Hangman
	attr_accessor :palabras, :palabra, :palabra_a_adivinar, :letraa, :intentos, :total_intentos, :pista, :puntaje

	def inicializar
		@palabras = ["maniobra","aviacion","boeing","airbus","cessna"]
		@palabra = ""
		@palabra_a_adivinar = Array.new
		@intentos = 0
		@total_intentos = 6
		@puntaje = 0
		@pista = ''
	end

	def juego
		@palabra.each {@palabra_a_adivinar.push('_')}
	end

	def verificar_letra(letra)
		letra = letra.downcase
		return @palabra.include? letra
	end
end