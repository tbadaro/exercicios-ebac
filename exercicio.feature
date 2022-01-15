#language: pt

Funcionalidade: Configurar produto
Como cliente da EBAC-SHOP
Quero configurar meu produto de acordo com meu tamanho e gosto
E escolher a quantidade
Para depois inserir no carrinho

Contexto: 
Dado que eu escolha um produto

Esquema do Cenário: Adicionar itens ao carrinho
Quando o usuário escolher a cor <cor>
E o tamanho <tamanho>
E selecionar <quantidade> produtos
Então o botão de comprar deve ser habilitado para inserir os itens no carrinho

Esquema do Cenário: Limpar configuração de item
Quando o usurário escolher a cor <cor>
E o tamanho <tamanho>
E selecionar <quantidade> produtos
E clicar no botão de limpar
Então a configuração deve voltar ao estado original


Exemplos:
|cor|
|"Azul"|
|"Laranja"|
|"Vermelho"|

|tamanho|
|XS|
|S|
|M|
|L|
|XL|

|quantidade|
|1|
|2|
|3|
|4|
|5|
|6|
|7|
|8|
|9|
|10|


Funcionalidade:  Login na plataforma
Como cliente da EBAC-SHOP
Quero fazer o login (autenticação) na plataforma  
Para visualizar meus pedidos

Contexto: 

Dado que eu acesse a página de autenticação do portal EBAC

Esquema do Cenário: Autenticação Válida
Quando o usuário digitar o username <username>
E a senha <senha>
Então deve direcionar para a tela e checkout

Cenário: Usuário inválido
Quando o usuário digitar o username "anakin@ebac.com"
E a senha "padmeloveforever"
Então deve exibir a mensagem de alerta "Usuário ou senha inválidos"

Cenário: Senha inválida
Quando eu digitar o usuário "han_solo@ebac.com.br"
E a senha "badFeeling456"
Então deve exibir a mensagem de alerta "Usuário ou senha inválidos"

Exemplos:
|username|senha|
|"luke@ebac.com.br"|"trusttheforce"|
|"han_solo@ebac.com.br"|"badFeeling123"|
|"leia@ebac.com.br"|"princessofAleraanBBY3"|
|"chewie@ebac.com.br"|"grwwww"|
|"vader@ebac.com.br"|"padmeloveforever"|


Funcionalidade:  Tela de cadastro para checkout
Como cliente da EBAC-SHOP
Quero concluir meu cadastro   
Para finalizar minha compra

Critérios de Aceitação:
1 – Deve ser cadastrado com todos os dados obrigatórios, marcado com asteriscos
2 – Não deve permitir campo e-mail com formato inválido. Sistema deve inserir uma mensagem de erro
3 – Ao tentar cadastrar com campos vazios, deve exibir mensagem de alerta. 
Contexto:
Dado  que o usuário acesse o formulário de checkout da compra

Cenário: Cadastro bem sucedido
Quando o usuário preencher o nome
E preencher o sobrenome
E escolher o país no menu dropdown
E preencher o endereço
E preencher o nome da cidade
E preencher o CEP
E preencher o telefone
E preencher o endereço de email com formato válido
E clicar no botão de finalizar compra
Então a compra será concluída

Cenário: Email em formato inválido
Quando o usuário preenher o campo de enderaço de email com formato inválido
Então o sistema apresentará a mensagem "formato de e-mail inválido"

Cenário: Tentar cadastrar com campos obrigatórios vazios
Quando o usuário deixar algum dos campos obrigatórios vazio
E clicar no botão de finalizar compra
Então o sistema exibirá a mensagem "campo obrigatório não preenchido"
