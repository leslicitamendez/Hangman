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