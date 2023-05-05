# Define as dependências necessárias para a execução dos testes
require 'httparty'
require 'rspec/expectations'

# Define uma etapa Given que acessa um endpoint com uma URL especificada
Given("que eu acesso o endpoint {string}") do |url|
  # Faz uma requisição HTTP GET para a URL especificada e armazena a resposta em uma variável
  @response = HTTParty.get(url)
end

# Define uma etapa Then que verifica se a chave especificada está presente na resposta JSON
Then("o retorno deve conter a chave {string}") do |chave|
  # Usa a biblioteca RSpec para verificar se a chave está presente na resposta JSON
  expect(@response.parsed_response).to have_key(chave)
end

# Define uma etapa And que imprime um tipo de estabelecimento aleatório na resposta JSON
And("eu imprimo aleatoriamente um tipo de estabelecimento") do
  # Obtém todos os tipos de estabelecimento presentes na resposta JSON
  tipos = @response.parsed_response["typeOfEstablishment"]
  # Escolhe aleatoriamente um tipo de estabelecimento e o imprime na tela
  puts tipos.sample
end
