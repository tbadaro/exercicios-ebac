Funcionalidade:  Tela de cadastro para checkout
Como cliente da EBAC-SHOP
Quero concluir meu cadastro   
Para finalizar minha compra

Contexto:
Dado  que o usuário acesse o formulário de checkout da compra

Cenário: Cadastro bem sucedido
Quando o usuário preencher os dados obrigatórios marcados com asterisco
E clicar no botão de finalizar compra
Então a compra será concluída

Cenário: Email em formato inválido
Quando o usuário preenher o campo de enderaço de email com formato inválido
Então o sistema apresentará a mensagem "formato de e-mail inválido"

Cenário: Tentar cadastrar com campos obrigatórios vazios
Quando o usuário deixar algum dos campos obrigatórios vazio
E clicar no botão de finalizar compra
Então o sistema exibirá a mensagem "campo obrigatório não preenchido"