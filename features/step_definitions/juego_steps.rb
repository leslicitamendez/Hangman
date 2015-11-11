When (/^presiono el boton "(.*)"$/) do |boton|
  click_link(boton)
end

Then(/^deberia ver el mensaje "(.*?)"$/) do |mensaje|
  last_response.body.should =~ /#{mensaje}/m
end