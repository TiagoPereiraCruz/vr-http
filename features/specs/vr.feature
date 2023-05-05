#language: pt

Funcionalidade: Validar JSON do endpoint

# Cenário de teste que verifica se o endpoint retorna a chave "typeOfEstablishment" no JSON de resposta
Cenario: Verificar se o JSON retornado possui a chave "typeOfEstablishment"

# Pré-condição: Acessar o endpoint especificado
Dado que eu acesso o endpoint "https://portal.vr.com.br/api-web/comum/enumerations/VRPAT"

# Condição esperada: A chave "typeOfEstablishment" deve estar presente no JSON retornado
Então o retorno deve conter a chave "typeOfEstablishment"

# Etapa adicional: Exibir um tipo de estabelecimento aleatório em uma mensagem de log
E eu imprimo aleatoriamente um tipo de estabelecimento