Feature: Juego
	Scenario: Pagina del juego
		Given me encuentro en la pagina de inicio
		When presiono el boton "Jugar"
		Then deberia ver el mensaje "Adivina la palabra"

	Scenario: Empezar a jugar
		Given me encuentro en la pagina del juego
		And escribo "a" en el campo "letra"
		When presiono el boton con id "adivina"
		Then deberia ver la letra "a"