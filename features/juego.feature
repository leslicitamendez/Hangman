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

	Scenario: Letra en palabra
		Given me encuentro en la pagina del juego
		And escribo "a" en el campo "letra"
		When presiono el boton con id "adivina"
		Then deberia ver "_ a _ _ _ _ _ a"

	Scenario: Dibujar ahorcado
		Given me encuentro en la pagina del juego
		And escribo "x" en el campo "letra"
		When presiono el boton con id "adivina"
		Then deberia ver el dibujo del ahorcado ".jpg"
		And numero de intentos "-1"

	Scenario: Pedir pista
		Given me encuentro en la pagina del juego
		When hago click en "Pedir Pista"
		And la pista es la letra "o"
		Then deberia ver "_ _ _ _ o _ _ _" y el dibujo del ahorcado ".jpg"
		And numero de intentos "-1"

