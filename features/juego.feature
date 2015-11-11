Feature: Juego
	Scenario: Pagina del juego
		Given me encuentro en la pagina de inicio
		When presiono el boton "Jugar"
		Then deberia ver el mensaje "Adivina la palabra"