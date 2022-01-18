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

Esquema do Cenário: Usuário ou senha inválidos
Quando o usuário digitar o username <username_invalido>
E a senha <senha_invalida>
Então deve exibir a mensagem de alerta "Usuário ou senha inválidos"

Exemplos:
|username               |senha                  |username_invalido          |senha_invalida | 
|"luke@ebac.com.br"     |"trusttheforce"        |"bobbafett@ebac.com.br"    |"jangofett"    |
|"han_solo@ebac.com.br" |"badFeeling123"        |"darthvader@ebac.com.br"   |"padmeAmidala" |
|"leia@ebac.com.br"     |"princessofAleraanBBY3"|"jabbat@ebac.com.br"       |"thehutt"      |