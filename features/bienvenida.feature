Feature: Bienvenida
	Scenario: Pagina de inicio
		Given me encuentro en la pagina de inicio
		Then veo el mensaje "Bienvenido a Hangman"
		Then veo la imagen "h0.png"
		Then veo el boton "Jugar"