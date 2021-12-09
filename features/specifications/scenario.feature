#language: pt

Funcionalidade: Validar o retorno dos produtos e estabelecimentos VR 
Para que eu possa verificar as informações cadastradas
Identificando a chave específica “typeOfEstablishment”
Posso gerar imagem de um dos tipos dos estabelecimentos retornados

@consulta
Cenário: Verificar retorno dos produtos e estabelecimentos VR
Dado o endereço da API para consulta VR
Quando realizar a consulta
Então a API retornará os dados com chave "typeOfEstablishment"
E haverá captura do estabelecimento