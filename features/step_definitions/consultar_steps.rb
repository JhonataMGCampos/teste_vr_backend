Dado("o endereço da API para consulta VR") do
  @acesso_page.mensagem
end

Quando("realizar a consulta") do
  @consulta_page.metodoBusca
end

Então("a API retornará os dados com chave {string}") do |chave|
  @consulta_page.metodoCompara(chave)
end

Então("haverá captura do estabelecimento") do
  @consulta_page.metodoPrint
end
