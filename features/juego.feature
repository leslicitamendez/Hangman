Feature: Juego
	Scenario: Pagina del juego
		Given me encuentro en la pagina de inicio
		And presiono el boton "Jugar"
		Then veo el mensaje "Adivina la palabra"