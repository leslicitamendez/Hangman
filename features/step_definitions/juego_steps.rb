When (/^presiono el boton "(.*)"$/) do |boton|
  click_link(boton)
end

Then(/^deberia ver el mensaje "(.*?)"$/) do |mensaje|
  last_response.body.should =~ /#{mensaje}/m
end

# Scenario: Empezar a jugar

Given(/^me encuentro en la pagina del juego$/) do
  visit '/juego'
end

And(/^escribo "(.*?)" en el campo "(.*?)"$/) do |valor, campo|
  fill_in(campo, :with => valor)
end

When(/^presiono el boton con id "(.*?)"$/) do |nombre|
  click_button(nombre)
end

Then(/^deberia ver la letra "(.*?)"$/) do |letra|
	last_response.body.should =~ /#{letra}/m
end

# Scenario: Letra en palabra

Then(/^deberia ver "(.*?)"$/) do |oculto|
  last_response.body.should include #{oculto}
end

# Scenario: Dibujar ahorcado

Then(/^deberia ver el dibujo del ahorcado "(.*?)"$/) do |imagen|
  last_response.body.should =~ /#{imagen}/m
end

Then(/^numero de intentos "(.*?)"$/) do |intento|
  last_response.body.should include #{intento}
end

# Scenario: Pedir pista

When(/^hago click en "(.*?)"$/) do |pista|
  click_button(pista)
end

When(/^la pista es la letra "(.*?)"$/) do |letra|
  last_response.body.should include #{letra}
end
