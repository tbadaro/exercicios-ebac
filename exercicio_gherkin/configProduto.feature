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

Esquema do Cenário: Selecionar mais de 10 itens
Quando o usuário escolher a cor <cor>
E o tamanho <tamanho>
E selecionar a quantidade de produtos <acima_do_limite>
Então deve ser exibido a mensagem "limite máximo de dez itens ultrapassado"

Esquema do Cenário: Limpar configuração de item
Quando o usurário escolher a cor <cor>
E o tamanho <tamanho>
E selecionar <quantidade> produtos
E clicar no botão de limpar
Então a configuração deve voltar ao estado original

Exemplos:
|cor        |tamanho    |quantidade |acima_do_limite    |
|"Azul"     |"XS"       |"1"        |"11"               |
|"Laranja"  |"S"        |"2"        |"12"               | 
|"Vermelho" |"M"        |"3"        |"13"               |